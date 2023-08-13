import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../p_Homepage/p_home.dart';


class Regp extends StatefulWidget {
  const Regp({
    Key? key,
  }) : super(key: key);

  @override
  State<Regp> createState() => _RegpState();
}

class _RegpState extends State<Regp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isShowLoadingp = false;
  bool isShowConfetti = false;
  late SMITrigger error;
  late SMITrigger success;
  late SMITrigger reset;

  late SMITrigger confetti;

  void _onCheckRiveInit(Artboard artboard) {
    StateMachineController? controller =
    StateMachineController.fromArtboard(artboard, 'State Machine 1');

    artboard.addController(controller!);
    error = controller.findInput<bool>('Error') as SMITrigger;
    success = controller.findInput<bool>('Check') as SMITrigger;
    reset = controller.findInput<bool>('Reset') as SMITrigger;
  }

  void _onConfettiRiveInit(Artboard artboard) {
    StateMachineController? controller =
    StateMachineController.fromArtboard(artboard, "State Machine 1");
    artboard.addController(controller!);

    confetti = controller.findInput<bool>("Trigger explosion") as SMITrigger;
  }

  void singIn(BuildContext context) {
    // confetti.fire();
    setState(() {
      isShowConfetti = true;
      isShowLoadingp = true;
    });
    Future.delayed(
      const Duration(seconds: 1),
          () {
        if (_formKey.currentState!.validate()) {
          success.fire();
          Future.delayed(
            const Duration(seconds: 2),
                () {
              setState(() {
                isShowLoadingp = false;
              });
              confetti.fire();
              // Navigate & hide confetti
              Future.delayed(const Duration(seconds: 1), () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Patient_Homepage(),
                  ),
                );
              });
            },
          );
        } else {
          error.fire();
          Future.delayed(
            const Duration(seconds: 2),
                () {
              setState(() {
                isShowLoadingp = false;
              });
              reset.fire();
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Form(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "UserName",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your Name',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,
                          width: 2,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.4),
                        child: Image.asset("assets/icons/user.png",height: 8,),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,
                          width: 2,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.4),
                        child: Image.asset("assets/icons/password.png",height: 12,),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Email Id",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'abc@gmail.com',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,
                          width: 2,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset("assets/icons/email.png",height: 12,),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Phone Number",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: '+91-XXXXXXXXXX',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,
                          width: 2,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.4),
                        child: Image.asset("assets/icons/p.png",height: 12,),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Address",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return "";
                            }
                            return null;
                          },
                      decoration: InputDecoration(
                        hintText: 'Enter your address here',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2,),
                        )
                      ),
                    ),
                ),
                const Text(
                  "Addhar Number",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'XXXX-XXXX-XXXX-XXXX',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2,),
                        )
                    ),
                  ),
                ),

                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(4.8),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      singIn(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      minimumSize: const Size(double.infinity, 56),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                    ),
                    icon: const Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                    ),
                    label: const Text("Register",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        isShowLoadingp
            ? CustomPositioned(
          child: RiveAnimation.asset(
            'assets/RiveAssets/check.riv',
            fit: BoxFit.cover,
            onInit: _onCheckRiveInit,
          ),
        )
            : const SizedBox(),
        isShowConfetti
            ? CustomPositioned(
          scale: 6,
          child: RiveAnimation.asset(
            "assets/RiveAssets/confetti.riv",
            onInit: _onConfettiRiveInit,
            fit: BoxFit.cover,
          ),
        )
            : const SizedBox(),
      ],
    );
  }
}

class CustomPositioned extends StatelessWidget {
  const CustomPositioned({super.key, this.scale = 1, required this.child});

  final double scale;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Column(
        children: [
          const Spacer(),
          SizedBox(
            height: 100,
            width: 100,
            child: Transform.scale(
              scale: scale,
              child: child,
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
