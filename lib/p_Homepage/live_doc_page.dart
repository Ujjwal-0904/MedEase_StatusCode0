import 'package:flutter/material.dart';

void main() {
  runApp(const LiveConsult());
}

class LiveConsult extends StatefulWidget {
  const LiveConsult({super.key});

  @override
  State<LiveConsult> createState() => _LiveConsultState();
}

class _LiveConsultState extends State<LiveConsult> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: ,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 250,
                      width: 150,
                      // color: Colors.grey,
                      child: Image.asset('assets/Backgrounds/doctor.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.,
                      children: <Widget>[
                        const Text(
                          'Dr. Behera',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Row(
                          children: <Widget>[
                            Chip(
                              label: Text('MBBS'),
                              backgroundColor: Colors.black12,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Chip(
                              label: Text('MD'),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Chip(
                              label: Text('MS'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue),
                              child: const Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue),
                              child: const Icon(
                                Icons.video_call,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue),
                              child: const Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    )
                  ],
                ),
                Container(
                  height: 80,
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue.shade100,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Patients',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black54),
                            ),
                            Text(
                              '2500+',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Experience',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black54),
                            ),
                            Text(
                              '10 yrs+',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Rating',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black54),
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Lorem Le centuries, but also the leap intog, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Book Appointment',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Reviews Section',
                  style: TextStyle(fontSize: 24, color: Colors.blue[200]),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.fromLTRB(24, 8, 10, 5),
                  height: 120,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.grey.shade200,),
                  child: const Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Text('Mr. Purbui',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                          'initially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lor .'),
                      SizedBox(height: 8,),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          SizedBox(width: 30,),
                          Text("9 Feb 2022"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.fromLTRB(24, 8, 10, 5),
                  height: 120,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.grey.shade200,),
                  child: const Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Text('Mr. Purbui',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                          'initially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lor .'),
                      SizedBox(height: 8,),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          SizedBox(width: 30,),
                          Text("9 Feb 2022"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.fromLTRB(24, 8, 10, 5),
                  height: 120,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.grey.shade200,),
                  child: const Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Text('Mr. Purbui',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                          'initially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lor .'),
                      SizedBox(height: 8,),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          SizedBox(width: 30,),
                          Text("9 Feb 2022"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.fromLTRB(24, 8, 10, 5),
                  height: 120,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.grey.shade200,),
                  child: const Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Text('Mr. Purbui',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                          'initially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lor .'),
                      SizedBox(height: 8,),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          Icon(Icons.star, size: 18,),
                          SizedBox(width: 30,),
                          Text("9 Feb 2022"),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
