import 'package:flutter/material.dart';
import 'package:med_ease/p_Homepage/medicine.dart';
import 'package:med_ease/p_Homepage/specialist_doctor.dart';
import 'package:med_ease/p_Homepage/widgets_methods_classes.dart';
import 'package:med_ease/p_Homepage/p_info.dart';

import '../food_page/food.dart';
import 'blog_home.dart';

void main() {
  runApp(const MaterialApp());
}

class Patient_Homepage extends StatefulWidget {
  const Patient_Homepage({Key? key}) : super(key: key);

  @override
  State<Patient_Homepage> createState() => _Patient_HomepageState();
}

class _Patient_HomepageState extends State<Patient_Homepage> {

  final String curr_loc = "Los Angeles";
  final String docName = "Singh";
  final String docSpeciality = "Cardiac Surgeon";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.blueGrey,
            icon: const Icon(Icons.menu),
            onPressed: (){

            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add_outlined),
            ),
          ],
          title: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Current Location',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                curr_loc,
                style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ' Search a doctor or health issue ....',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (value) {
                      // Add your search functionality here
                      // This callback will be triggered whenever the user types in the search bar.
                    },
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      ' Hi...\n Anything\n You Need ?',
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Text(
                      '   Categories',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10),
                      child: Image.asset("assets/backgrounds/apoinment.jpg"),
                      ),
                      Padding(padding: EdgeInsets.all(8),
                        child: InkWell(child: Image.asset("assets/backgrounds/medicine.png"),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:  (context)=>MymedApp()));
                        }
                          ,),
                      ),
                      Padding(padding: EdgeInsets.all(8),
                        child: Image.asset("assets/backgrounds/hospital.jpg"),
                      ),
                      Padding(padding: EdgeInsets.all(8),
                        child: InkWell( child: Image.asset("assets/backgrounds/food.jpg"),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:  (context)=>food()));
                        },
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8),
                        child: InkWell(child: Image.asset("assets/Backgrounds/articles.jpg"),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:  (context)=>PatientBlogpage()));
                        },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text("Doctor's Speciality",
                    style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Image.asset("assets/Backgrounds/liver.jpg"),
                            Text("Gastro..",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            InkWell(child: Image.asset("assets/Backgrounds/tooth.jpg"),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:  (context)=>Specialistpage()));
                            },),
                            Text("Dentist",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Image.asset("assets/Backgrounds/brain.jpg"),
                            Text("Neuro..",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Image.asset("assets/Backgrounds/heart.jpg"),
                            Text("Cardio..",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Image.asset("assets/Backgrounds/bone.jpg"),
                            Text("Ortho..",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Image.asset("assets/Backgrounds/eye.jpg"),
                            Text("Eye-Nose-..",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Image.asset("assets/Backgrounds/gen.jpg"),
                            Text("General",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("assets/Backgrounds/more.jpg"),
                              height: 40,
                            ),
                            Text("More",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                const Row(
                  children: [
                    Text('   Live Consultation',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      p_main_doc_live_con(
                          docName: docName, docSpeciality: docSpeciality),
                      p_main_doc_live_con(
                          docName: docName, docSpeciality: docSpeciality),
                      p_main_doc_live_con(
                          docName: docName, docSpeciality: docSpeciality),
                      p_main_doc_live_con(
                          docName: docName, docSpeciality: docSpeciality),
                      p_main_doc_live_con(
                          docName: docName, docSpeciality: docSpeciality),
                      p_main_doc_live_con(
                          docName: docName, docSpeciality: docSpeciality),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '   Recent History',style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'See All',style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                Column(
                  children: <Widget>[
                    p_main_recent_history(
                        docName: docName, docSpeciality: docSpeciality),
                    p_main_recent_history(
                        docName: docName, docSpeciality: docSpeciality),
                    p_main_recent_history(
                        docName: docName, docSpeciality: docSpeciality),
                    p_main_recent_history(
                        docName: docName, docSpeciality: docSpeciality),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}