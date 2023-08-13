import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'd_login_form.dart';

void showCustomDialog(BuildContext context, {required ValueChanged onValue}) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Container(
          height: 400,
          margin: const EdgeInsets.symmetric(horizontal: 9.6),
          padding: const EdgeInsets.symmetric(vertical: 19.2, horizontal: 14.4),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.95),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 30),
                blurRadius: 60,
              ),
              const BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 30),
                blurRadius: 60,
              ),
            ],
          ),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 34,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 16),
                    //   child: Text(
                    //     "Access to 240+ hours of content. Learn design and code, by building real apps with Flutter and Swift.",
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),
                    const SignInForm(),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(),
                        ),

                      ],
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;

      tween = Tween(begin: const Offset(0, -1), end: Offset.zero);

      return SlideTransition(
        position: tween.animate(
          CurvedAnimation(parent: anim, curve: Curves.easeInOut),
        ),

        child: child,
      );
    },
  ).then(onValue);
}
