from flask import Flask, request, jsonify
from pymongo import MongoClient
import bcrypt
app = Flask(__name__)
client = MongoClient('mongodb+srv://hacker:iiserkolkata@cluster0.akxrbxh.mongodb.net/?retryWrites=true&w=majority')
db1, db2 = client['patient'], client['doctors'] 
users_collection, doctors_collection = db1['patient-details'], db2['doctor-details']
appointments_collection = db2['appointments']

class Doctor:
    def __init__(self, doctor_name, govt_id, email, phone_number, current_workplace,
                 previous_workplace, speciality, qualifications, years_of_exp):
        self.doctor_name = doctor_name
        self.govt_id = govt_id
        self.email = email
        self.phone_number = phone_number
        self.current_workplace = current_workplace
        self.previous_workplace = previous_workplace
        self.speciality = speciality
        self.qualifications = qualifications
        self.years_of_exp = years_of_exp

class Patient:
    def __init__(self, username, email, address, phone_number, aadhar_number):
        self.username = username
        self.email = email
        self.address = address
        self.phone_number = phone_number
        self.aadhar_number = aadhar_number

@app.route('/register/patient', methods=['POST'])
def register_user():
    data = request.get_json()

    username = data['username']
    password = data['password']
    email = data['email']
    address = data['address']
    phone_number = data['phone_number']
    aadhar_number = data['aadhar_number']

    existing_user = users_collection.find_one({'aadhar_number': aadhar_number})
    if existing_user:
        return jsonify({'message': 'Aadhar number already exists'}), 400

    encrypted_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt())
    user_data = {
        'username': username,
        'password': encrypted_password,
        'email': email,
        'address': address,
        'phone_number': phone_number,
        'aadhar_number': aadhar_number
    }
    users_collection.insert_one(user_data)

    return jsonify({'message': 'Patient registration successful'}), 200

@app.route('/login/patient', methods=['GET'])
def login_patient():
    try:
        aadhar_number = request.args.get('aadhar_number')
        password = request.args.get('password')
        
        if not aadhar_number or not password:
            return jsonify({'status': 'error', 'message': 'Missing credentials'}), 400
        
        patient = users_collection.find_one({'aadhar_number': aadhar_number})
        
        if patient and bcrypt.checkpw(password.encode('utf-8'), patient['password']):
            # Exclude ObjectId field and decode password
            patient_dict = {key: value.decode('utf-8') if key == 'password' else value for key, value in patient.items() if key != '_id'}
            return jsonify({
                'status': 'success',
                'message': 'Login successful',
                'patient': patient_dict
            }), 200
        else:
            return jsonify({'status': 'error', 'message': 'Invalid credentials'}), 401
    except Exception as e:
        return jsonify({
            'status': 'error',
            'message': 'An error occurred',
            'error': str(e)
        }), 500


@app.route('/register/doctor/step1', methods=['POST'])
def register_doctor_step1():
    data = request.get_json()

    doctor_name = data['doctor_name']
    govt_id = data['govt_id']
    password = data['password']
    email = data['email']
    phone_number = data['phone_number']

    existing_doctor = doctors_collection.find_one({'govt_id': govt_id})
    if existing_doctor:
        return jsonify({'message': 'Doctor with the given government ID already exists'}), 400

    encrypted_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt())
    doctor_data = {
        'doctor_name': doctor_name,
        'govt_id': govt_id,
        'password': encrypted_password,
        'email': email,
        'phone_number': phone_number,
    }
    doctors_collection.insert_one(doctor_data)

    return jsonify({'message': 'Doctor registration step 1 successful'}), 200

@app.route('/register/doctor/step2', methods=['POST'])
def register_doctor_step2():
    data = request.get_json()

    govt_id = data['govt_id']
    current_workplace = data['current_workplace']
    previous_workplace = data['previous_workplace']
    speciality = data['speciality']
    qualifications = data['qualifications']
    years_of_exp = data['years_of_exp']

    existing_doctor = doctors_collection.find_one({'govt_id': govt_id})
    if not existing_doctor:
        return jsonify({'message': 'Not found: doctor_name'}), 400

    doctors_collection.update_one(
        {'govt_id': govt_id},  
        {
            '$set': {
                'current_workplace': current_workplace,
                'previous_workplace': previous_workplace,
                'speciality': speciality,
                'qualifications': qualifications,
                'years_of_exp': years_of_exp,
            }
        }
    )

    return jsonify({'message': 'Doctor registration step 2 successful'}), 200

@app.route('/cancel/appointment/patient', methods=['OPTIONS'])
def cancel_appointment_by_patients():
    patient_name = request.args.get('patient_name')
    doctor_name = request.args.get('doctor_name')
    
    if not patient_name:
        return jsonify({"message": "Patient details not given"}), 400
    if not doctor_name:
        return jsonify({"message": "Doctor details not given"}), 400
    
    appointment = appointments_collection.find_one_and_delete({"patient_name": patient_name, "doctor_name": doctor_name})
    
    if appointment:
        return jsonify({"message": "Appointment is deleted successfully"}), 200
    else:
        return jsonify({"message": "Appointment is not found"}), 404

@app.route('/login/doctor', methods=['GET'])
def login_doctor():
    try:
        govt_id = request.args.get('govt_id')
        password = request.args.get('password')
        
        if not govt_id or not password:
            return jsonify({'status': 'error', 'message': 'Missing credentials'}), 400
        
        doctor = doctors_collection.find_one({'govt_id': govt_id})
        
        if doctor and bcrypt.checkpw(password.encode('utf-8'), doctor['password']):
            # Exclude ObjectId field and decode password
            doctor_dict = {key: value.decode('utf-8') if key == 'password' else value for key, value in doctor.items() if key != '_id'}
            return jsonify({
                'status': 'success',
                'message': 'Login successful',
                'doctor': doctor_dict
            }), 200
        else:
            return jsonify({'status': 'error', 'message': 'Invalid credentials'}), 401
    except Exception as e:
        return jsonify({
            'status': 'error',
            'message': 'An error occurred',
            'error': str(e)
        }), 500


@app.route('/make-appointments', methods=['POST'])
def make_appointments():
    data = request.get_json()

    existing_appnt = appointments_collection.find_one({'patient_name': data['patient_name'],
                                        'doctor_name':data['doctor_name']
    })
    if existing_appnt:
        return jsonify({'message': 'appointment with the same doctor has already been made'}), 400
    appointments_collection.insert_one({'patient_name': data['patient_name'],
                                        'doctor_name':data['doctor_name']})
    return jsonify({'message': 'appointment created successfully'}), 200
    
@app.route('/get-doctors', methods=['GET'])
def get_doctors():
    speciality = request.args.get('speciality')
    if not speciality:
        return jsonify({'message': 'Speciality not provided'}), 400
    
    doctors = doctors_collection.find({'speciality': speciality})
    doctor_list = []
    
    for doctor_data in doctors:
        doctor = Doctor(
            doctor_name=doctor_data['doctor_name'],
            govt_id=doctor_data['govt_id'],
            email=doctor_data['email'],
            phone_number=doctor_data['phone_number'],
            current_workplace=doctor_data['current_workplace'],
            previous_workplace=doctor_data['previous_workplace'],
            speciality=doctor_data['speciality'],
            qualifications=doctor_data['qualifications'],
            years_of_exp=doctor_data['years_of_exp']
        )
        doctor_list.append(doctor)

    return jsonify([vars(doctor) for doctor in doctor_list]), 200


@app.route('/doctor/appointments', methods=['GET'])
def get_appointments():
    doctor_name = request.args.get('doctor_name')
    if not doctor_name:
        return jsonify({'message': 'Doctor name not provided'}), 400

    appointments = appointments_collection.find({'doctor_name': doctor_name})
    patient_names = [appointment['patient_name'] for appointment in appointments]

    return jsonify(patient_names), 200

if __name__ == '__main__':
    app.run(debug=True)
