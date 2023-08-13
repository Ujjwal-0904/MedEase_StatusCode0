import 'package:flutter/material.dart';

import 'p_home.dart';

void main() {
  runApp(const PaymentSummary());
}

class PaymentSummary extends StatefulWidget {
  const PaymentSummary({super.key});

  @override
  State<PaymentSummary> createState() => _PaymentSummaryState();
}

class _PaymentSummaryState extends State<PaymentSummary> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
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
                  ],
                ),
                Container(
                  height: 350,
                  color: Colors.greenAccent,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white,),
                    // padding: EdgeInsets.all(5),
                    margin: const EdgeInsets.all(20),
                    // height: 400,

                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Dr. Bera',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Row(
                          children: <Widget>[
                            SizedBox(
                              width: 16,
                            ),
                            Icon(Icons.date_range),
                            Text(
                              '   15/02/2023',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        const Row(
                          children: <Widget>[
                            SizedBox(
                              width: 16,
                            ),
                            Icon(Icons.access_time),
                            Text(
                              '   18:00',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        Container(
                          // margin: EdgeInsets.all(5),
                          color: Colors.greenAccent,
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(17),
                          child: const Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.location_on_sharp),
                                  // SizedBox(height: 16,),
                                  Text(
                                    'Address :-',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Kolkata , Sector V , Salt lake city\n PIN : 7000059 ',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Primary Payment',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Text(
                                        'Rs. 149.99',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Seconday Payment',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        'Rs. 349.99',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.fromLTRB(8,0,8,0),
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Promo Code(optional)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    SizedBox(width: 16,),
                    const Text('CHOOSE YOUR PAYMENT METHOD',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 8,),
                Container(
                  padding: EdgeInsets.fromLTRB(16,0,16,0),
                  child: const Text(
                      'Complete your payments to recieve your secured time slot via one of our secure payment methods .'),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      // color: Colors.blue,
                      child: Image.asset('assets/Backgrounds/visa.png'),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      // color: Colors.blue,
                      child: Image.asset('assets/Backgrounds/upi.png'),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      // color: Colors.blue,
                      child: Image.asset('assets/Backgrounds/paypal.png'),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 5.3,),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text('Rs. 149.99'),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 60,
                          color: Colors.yellow,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Pay  >',
                              style: TextStyle(
                                  fontSize: 24, color: Colors.black87),
                            ),
                          ),
                        )),
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
