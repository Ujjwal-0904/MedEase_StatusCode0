import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'login_page/d_login_dialog.dart';
import 'login_page/p_login_dialog.dart';
import 'onboading_screen_register.dart';

class OnbodingScreen extends StatefulWidget {
  const OnbodingScreen({super.key});

  @override
  State<OnbodingScreen> createState() => _OnbodingScreenState();
}

class _OnbodingScreenState extends State<OnbodingScreen> {
  late RiveAnimationController _btnAnimationController;

  bool isShowLoading1 = false;
  bool isShowLoading = false;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Padding(
            padding: EdgeInsets.fromLTRB(16, 48, 16, 0),
            child: Column(
                children: <Widget>[
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'MedEase',
                          style: TextStyle(
                            fontFamily: 'pop-Sm',
                            fontSize: 40.0,
                            color: Colors.white,
                            letterSpacing: 0.5,
                          ),
                        ),

                        Text(
                          '360',
                          style: TextStyle(
                            fontFamily: 'pop-Sm',
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.pink[600],
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 48),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('assets/images/g1.png'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 400, 0, 0),
                          child: Text(
                            'Log in as',
                            style: TextStyle(
                              fontFamily: 'pop-M',
                              fontSize: 20.0,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        const Spacer(flex: 2),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(45, 450, 0, 0),
                          child: Center(
                            child: Column(
                              children: [
                                ElevatedButton(onPressed: (){
                                  Future.delayed(
                                    const Duration(milliseconds: 500),
                                        () {
                                      setState(() {
                                        isShowLoading1 = true;
                                      });
                                      showCustomDialog1(
                                        context,
                                        onValue: (_) {
                                          setState(() {
                                            isShowLoading1 = false;
                                          });
                                        },
                                      );
                                    },
                                  );
                                },
                                    style:
                                    ButtonStyle(
                                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                            (Set<MaterialState> states) {
                                          if (states.contains(MaterialState.pressed))
                                            return Colors.deepPurple; //<-- SEE HERE
                                          return null; // Defer to the widget's default.
                                        },
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: const Text('Patient',
                                        style: TextStyle(fontSize: 28),
                                      ),
                                    )),
                                SizedBox(height: 16),
                                ElevatedButton(onPressed: (){
                                  Future.delayed(
                                    const Duration(milliseconds: 500),
                                        () {
                                      setState(() {
                                        isShowLoading = true;
                                      });
                                      showCustomDialog(
                                        context,
                                        onValue: (_) {
                                          setState(() {
                                            isShowLoading = false;
                                          });
                                        },
                                      );
                                    },
                                  );
                                },
                                    style:
                                    ButtonStyle(
                                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                            (Set<MaterialState> states) {
                                          if (states.contains(MaterialState.pressed))
                                            return Colors.deepPurple; //<-- SEE HERE
                                          return null; // Defer to the widget's default.
                                        },
                                      ),
                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: const Text('Doctor',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    )),

                                SizedBox(height: 20),
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Row(
                                    children: [
                                      Text('New User? ',
                                        style: TextStyle(
                                          fontFamily: 'pop-M',
                                          fontSize: 20.0,
                                          color: Colors.white,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: InkWell(
                                          child: Text('Register Here',
                                            style: TextStyle(
                                              fontFamily: 'pop-M',
                                              fontSize: 20.0,
                                              color: Colors.amber,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                          onTap:(){
                                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  OnbodingScreen1()));
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ]
            )
        ),
        ],
      ),
      backgroundColor: Colors.blue[800],
    );
  }
}
