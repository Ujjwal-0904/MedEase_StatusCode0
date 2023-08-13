import 'package:flutter/material.dart';

import 'p_home.dart';

void main() {
  runApp(MymedApp());
}

class MymedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Pharmacy"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Patient Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'patient@example.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // TODO: Add settings functionality
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: TextButton(child: Text('Logout'),
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Patient_Homepage()));
              },
              ),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome to,',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Online Pharmacy Store',
                    style: TextStyle(
                      color:Colors.purple,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Add spacing between text and image
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/discount.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add spacing below the image
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'TOP Sellers',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
             SizedBox(height: 10),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/med1.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/med2.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/med3.png'),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/med4.png'),
              ),
            ],
           ),
         ),
         SizedBox(height: 10,),
         SizedBox(width: 5,),
         Text("     Category",
         style:TextStyle(color:Colors.blue,
         fontWeight: FontWeight.w800,
         fontSize: 20,
         )
         ),
         Padding(padding: const EdgeInsets.all(16.0),
        child: Image.asset("assets/images/categories.png"),
         ),
          Padding(padding: const EdgeInsets.all(16.0),
        child: Image.asset("assets/images/store.png"),
         ),
          ],
        ),
      ),
    );
  }
}
_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

canLaunch(String url) {
}

launch(String url) {
}
