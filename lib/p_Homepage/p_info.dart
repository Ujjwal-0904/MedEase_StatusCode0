import 'package:flutter/material.dart';
import 'package:med_ease/p_Homepage/summary.dart';
import 'package:med_ease/p_Homepage/widgets_methods_classes.dart';
import 'package:med_ease/p_Homepage/p_home.dart';

void main() {
  runApp(const P_doc_appointment_info());
}

class P_doc_appointment_info extends StatelessWidget {
  const P_doc_appointment_info({Key? key}) : super(key: key);

  final String docName = "Singh";

  final String docSpeciality = "Cardiac Surgeon";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                SizeTransition4(
                  const Patient_Homepage(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_add_outlined,
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Row(
                children: [
                  Text(
                    ' Have\n Something\n To Talk?',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                // color: Colors.grey,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Dr. ' + docName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const Icon(
                                Icons.verified_user_outlined,
                                color: Colors.blueAccent,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                docSpeciality,
                                style: const TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // SizedBox(width: 15,),
                      Container(
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blueAccent.shade700,
                        ),
                        child: const Center(child: Text('Rating',style: TextStyle(color: Colors.white),),),
                      ),

                      const Text('4.5/5.0'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 26,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Experience',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text('4+ yrs.')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Qualification',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text('MBBS,MD,MS'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 26,),
              const Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 26,),
              const Text(
                  's simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a  with the release of and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
              SizedBox(height: 16,),
              Container(
                height: 190,
                margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16,),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blueAccent.shade700),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const PaymentSummary()));
                  },
                  child: const Text(
                    'Book Now',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
