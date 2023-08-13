import 'package:flutter/material.dart';
import 'package:med_ease/p_Homepage/p_home.dart';
import 'package:med_ease/p_Homepage/p_info.dart';
class p_main_recent_history extends StatelessWidget {
  const p_main_recent_history({
    super.key,
    required this.docName,
    required this.docSpeciality,
  });

  final String docName;
  final String docSpeciality;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.blueGrey.shade400,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(70),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Dr. $docName',
                style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                docSpeciality,
                style: const TextStyle(fontSize: 15),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      SizeTransition3(
                        P_doc_appointment_info(),
                      ),
                    );
                  },
                  child: const Text(
                    'Book Again',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            '14/02/2023',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}


class p_main_doc_live_con extends StatefulWidget {
  const p_main_doc_live_con({
    super.key,
    required this.docName,
    required this.docSpeciality,
  });

  final String docName;
  final String docSpeciality;

  @override
  State<p_main_doc_live_con> createState() => _p_main_doc_live_conState();
}

class _p_main_doc_live_conState extends State<p_main_doc_live_con> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      height: 160,
      width: 90,
      // color: Colors.grey,
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Text(
            'Dr. ${widget.docName}',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.docSpeciality,
            style: const TextStyle(fontSize: 12),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.shade900,
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  SizeTransition3(
                    P_doc_appointment_info(),
                  ),
                );
              },
              child: const Text(
                'Book Appointment',
                style: TextStyle(fontSize: 12 ,color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





class SizeTransition3 extends PageRouteBuilder {
  final Widget page;

  SizeTransition3(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return Align(
        alignment: Alignment.center,
        child: SizeTransition(
          axis: Axis.horizontal,
          sizeFactor: animation,
          child: page,
          axisAlignment: 0,
        ),
      );
    },
  );
}



class SizeTransition4 extends PageRouteBuilder {
  final Widget page;

  SizeTransition4(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(milliseconds: 1000),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return Align(
        alignment: Alignment.centerLeft,
        child: SizeTransition(
          axis: Axis.horizontal,
          sizeFactor: animation,
          child: page,
          axisAlignment: 0,
        ),
      );
    },
  );
}


