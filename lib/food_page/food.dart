import 'package:card_slider/card_slider.dart';
import 'package:flutter/material.dart';
import 'package:med_ease/p_Homepage/p_home.dart';

import '../main.dart';

void main() => runApp(const MaterialApp());

class food extends StatelessWidget {
  const food({super.key});


  @override
  Widget build(BuildContext context) {
    List<Widget> valuesWidget = [];

    List<String> valuesUrl = [
      "assets/Backgrounds/fats.png",
      "assets/Backgrounds/dairy.png",
      "assets/Backgrounds/grain.png",
      "assets/Backgrounds/healthySnaks.png",
      "assets/Backgrounds/legum.png",
      "assets/Backgrounds/protine.png",
      "assets/Backgrounds/veg.png",
      "assets/Backgrounds/fruitCard.png",
    ];

    for (int i = 0; i < valuesUrl.length; i++) {
      valuesWidget.add(
        Image.asset(valuesUrl[i],
        ),
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 240),
                  child: Image.asset('assets/Backgrounds/r.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160.0, left: 30),
                  child: Image.asset('assets/Backgrounds/fruit.png',
                    width: 380,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0, top: 200),
                  child: Image.asset('assets/Backgrounds/g.png',
                  ),
                ),

                Padding(padding: EdgeInsets.fromLTRB(16, 48, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(Icons.arrow_back_ios_new,
                      // color: Colors.blue,
                      //   size: 40,
                      // ),
                      IconButton(
                        icon: const Icon(Icons.arrow_back,
                          color: Colors.blue,
                          size: 40,
                        ),
                        onPressed:(){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Patient_Homepage()));
                        },
                      ),
                       const Icon(Icons.notifications_paused,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 90, left: 48),
                  child: Column(
                    children: [
                      Text('Healthy Foods',
                        style: TextStyle(
                          //fontFamily: 'Pop-Sm',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: Colors.blueAccent,
                          letterSpacing: 0,
                        ),
                      ),

                      Text('for',
                        style: TextStyle(
                          //fontFamily: 'Pop-R',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.blueAccent,
                          letterSpacing: 0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Text('Dieting',
                          style: TextStyle(
                            //fontFamily: 'Pop-Sm',
                            fontWeight: FontWeight.w500,
                            fontSize: 32,
                            color: Colors.blueAccent,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 450.0, left: 24),
                  child: Text('When it comes to dieting,',
                    style: TextStyle(
                      //fontFamily: 'Pop-Sm',
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.blueAccent[400],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 485.0, left: 24),
                  child: SizedBox(
                    width: 350,
                    child: Text('it\'s important to focus on consuming nutritious, low-calorie foods that will help you achieve your weight loss goals.',
                      style: TextStyle(
                        //fontFamily: 'Pop-M',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.blue[400],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 570.0, left: 24),
                  child: SizedBox(
                    width: 350,
                    child: Text('Here is a list of healthy foods that can be beneficial for a balanced and effective diet:',
                      style: TextStyle(
                        //fontFamily: 'Pop-L',
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                 Padding(
                  padding: EdgeInsets.only(top: 640.0, left: 32),
                  child: SizedBox(
                    width: 350,
                    child: Text('Categories',
                      style: TextStyle(
                        //fontFamily: 'Pop-Sm',
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Colors.blueAccent[200],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              height:480,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue[50],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),

                child: CardSlider(
                  cards: valuesWidget,
                  bottomOffset: .0008,
                  itemDotWidth: 16,
                  itemDotOffset: 0.15,
                  itemDot: (itemDotWidth) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 350),
                      child: Container(
                          margin: const EdgeInsets.all(4),
                          width: 12 + itemDotWidth,
                          height: 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[300],
                          )),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
