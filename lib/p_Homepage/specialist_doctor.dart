import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'p_home.dart';

void main() {
  runApp(Specialistpage());
}

class Specialistpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.blue,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const Patient_Homepage(),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Image.asset('assets/backgrounds/tooth.jpg'),
                  ),
                  const Text(
                    'Dentisity',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.blueAccent
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search Bar",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Colors.lightBlueAccent,
                              width: 2,
                            ),
                          ),
                        ),
                        showCursor: false,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 150,
                      width: MediaQuery.of(context).size.width /1.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset('assets/Backgrounds/spec.jpg',width: 140)
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Dr.Arya Farthy ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Text('4.9|20 Reviews|'),
                                    ],
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        style:
                                        DefaultTextStyle.of(context)
                                            .style,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Heart Surgeon',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                              FontWeight.w500,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          // TextSpan(
                                          //     text: 'Do Clinic plus'),
                                        ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: 100,
                      // width: 100,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                    'assets/Background/g.png'),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Dr.Arya Farthy ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Text('4.9|20 Reviews|'),
                                    ],
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        style:
                                        DefaultTextStyle.of(context)
                                            .style,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Heart Surgeon',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                              FontWeight.w500,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          TextSpan(
                                              text: 'Do Clinic plus'),
                                        ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: 100,
                      // width: 100,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                    'assets/Background/spec.jpg'),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Dr.Arya Farthy ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Text('4.9|20 Reviews|'),
                                    ],
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        style:
                                        DefaultTextStyle.of(context)
                                            .style,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Heart Surgeon',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                              FontWeight.w500,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          TextSpan(
                                              text: 'Do Clinic plus'),
                                        ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
