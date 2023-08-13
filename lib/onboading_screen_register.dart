import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'reg_page/p_reg_dialog.dart';
import 'reg_page/d_reg_dialog.dart';
import 'onboading_screen_login.dart';

class OnbodingScreen1 extends StatefulWidget {
  const OnbodingScreen1({super.key});

  @override
  State<OnbodingScreen1> createState() => _OnbodingScreenState1();
}

class _OnbodingScreenState1 extends State<OnbodingScreen1> {
  late RiveAnimationController _btnAnimationController;

  bool isShowLoadingp = false;
  bool isShowLoadingd = false;

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
                            'Register as',
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
                                        isShowLoadingp = true;
                                      });
                                      showDialogp(
                                        context,
                                        onValue: (_) {
                                          setState(() {
                                            isShowLoadingp = false;
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
                                SizedBox(height: 20),
                                ElevatedButton(onPressed: (){
                                  Future.delayed(
                                    const Duration(milliseconds: 500),
                                        () {
                                      setState(() {
                                        isShowLoadingd = true;
                                      });
                                      showDialogd(
                                        context,
                                        onValue: (_) {
                                          setState(() {
                                            isShowLoadingd = false;
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
                                      Text('Already Login! ',
                                        style: TextStyle(
                                          fontFamily: 'pop-M',
                                          fontSize: 20.0,
                                          color: Colors.white,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      // TextButton(onPressed: () {
                                      //  Navigator
                                      // },
                                      //     child:  Text('Sign in ',
                                      //       style: TextStyle(
                                      //         fontFamily: 'pop-M',
                                      //         fontSize: 20.0,
                                      //         color: Colors.amber,
                                      //         letterSpacing: 1,
                                      //       ),
                                      //     ),),
                                      Padding(padding: EdgeInsets.all(8),
                                        child: GestureDetector(
                                            child: Text('Sign in',
                                              style: TextStyle(
                                                fontFamily: 'pop-M',
                                                fontSize: 20.0,
                                                color: Colors.amber,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                            onTap: (){
                                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  OnbodingScreen()));
                                            }
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
