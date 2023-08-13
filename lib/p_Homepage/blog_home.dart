import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


import 'blog1info.dart';
import 'blog2info.dart';
import 'blog3info.dart';
import 'p_home.dart';
void main() {
  runApp(PatientBlogpage());
}

class PatientBlogpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: [
                  DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' Suresh Mishra',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                 leading: Icon(Icons.person,
                 color:Colors.amber
                 ),
                title: Text('Welcome',
                 style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),),
                onTap: () {
                  // Handle profile tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings,
                color: Colors.amber,
                ),
                title: Text('Settings',
                style:TextStyle(color:Colors.blue,
                fontWeight: FontWeight.w800,
                fontSize:16,
                )
                ),
                onTap: () {
                     // Handle settings tap
                },
              ),
              ListTile(
                leading: Icon(Icons.logout,
                color:Colors.amber
                ),
                title: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: TextButton(child: Text('Go Back'), onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Patient_Homepage()));
                  },
                  ),
                ),
                ),

            ],
          ),
        ),

        body: DoctorContent(),
      ),
    );
  }
}
class DoctorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32,left: 16),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Bar",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Hi,  Suresh Mishra", style: TextStyle(fontSize: 24,
            fontWeight: FontWeight.bold,color:Colors.blue
            )),
          ),
          // Container(
          //   color:Colors.blue,
          //   padding: EdgeInsets.symmetric(horizontal: 16.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //         CircularInfoContainer(
          //           label:"Followers",
          //           value:"1500",
          //         ),
          //          CircularInfoContainer(
          //           label:"Number Of Blogs",
          //           value:"1500",
          //         ),
          //          CircularInfoContainer(
          //           label:"Total Likes",
          //           value:"248",
          //         ),
          //     ],
          //   ),
          // ),
          //SizedBox(height:10),
          // Center(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children:[
          //   Container(
          //     margin:EdgeInsets.only(left: 16.0),
          // child:ElevatedButton(
          //   onPressed: () {
          //     // Handle My Uploads button press
          //   },
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.blue, // Set the background color here
          //     // You can also customize other properties like padding, elevation, etc.
          //   ),
          //   child: Text("My Uploads", style: TextStyle(fontSize: 18)),
          // ),),
          // Container(
          //   margin:EdgeInsets.only(left: 16.0),
          //    child:ElevatedButton(
          //   onPressed: () {
          //     // Handle My Uploads button press
          //   },
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.orange, // Set the background color here
          //     // You can also customize other properties like padding, elevation, etc.
          //   ),
          //   child: Text("Upload  Blog", style: TextStyle(fontSize: 18)),
          // )
          // ),],),),
          SizedBox(height: 16,),
          Row(
            children:[
          Icon(MdiIcons.pencil,
          color: Colors.red,
          ),
          Text("TOP BLOGS",
          style:TextStyle(fontSize: 20,
          fontWeight:FontWeight.bold,
          color: Colors.brown )
          ),],),
          SizedBox(height: 12),
          Container(
            height: 180, // Adjust the height as needed
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                 InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Blog1DetailPage(),
                      ),
                    );
                  },
                child:DecoratedBlogCard(imageUrl: "assets/images/blog1.jpg", blogName: "Lung LifeLines",likes :"Likes:2k+",per :"Dr Sushma"),
                 ),
                   InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Blog2DetailPage(),
                      ),
                    );
                  },
                child:DecoratedBlogCard(imageUrl: "assets/images/moreblog2.jpg", blogName: "Life Chornicles",likes:"Likes :1k+",per: "Dr Alex"),
                   ),
                  InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Blog3DetailPage(),
                      ),
                    );
                  },   
                child:DecoratedBlogCard(imageUrl: "assets/images/moreblog4.jpg", blogName: "The Cardiac Action",likes:"Likes:1.5k+",per :"Dr Shubham"),
                  ),
                // Add more DecoratedBlogCard widgets as needed
              ],
            ),
          ),
           SizedBox(height: 20.0),
    
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Follow Them",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Follow Them button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    // You can also customize other properties like padding, elevation, etc.
                  ),
                  child: Text("View All", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.0),
          Container(
            height: 100, // Adjust the height as needed
            child: ListView(
              scrollDirection: Axis.horizontal,
               children: [
                DoctorCard(imageUrl: "assets/images/doc1.jpg", doctorName: "Dr. Serena Fernandez"),
                DoctorCard(imageUrl: "assets/images/doc2.jpg", doctorName: "Dr. Federer"),
                DoctorCard(imageUrl: "assets/images/doc3.jpg", doctorName: "Dr. Luis Sadiku"),
                // Add more DoctorCard widgets as needed
              ],
            ),
          ),
           SizedBox(height: 24.0),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Icon(Icons.favorite, color: Colors.red), // Bookmark icon
              SizedBox(width: 8),
              Text(
                "Favourite Topics",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color:Colors.black
                   ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.0),
        Container(
          height: 100, // Adjust the height as needed
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FavouriteTopicCard(imageUrl: "assets/images/topic1.jpg", topicTitle: "Health"),
              FavouriteTopicCard(imageUrl: "assets/images/topic2.jpg", topicTitle: "Wellness"),
              FavouriteTopicCard(imageUrl: "assets/images/topic3.jpg", topicTitle: "Fitness"),
              // Add more FavouriteTopicCard widgets as needed
            ],
          ),
        ),
        ],  
      ),
    );
  }
}

class DecoratedBlogCard extends StatelessWidget {
  final String imageUrl;
  final String blogName;
  final String likes;
  final String per;
  DecoratedBlogCard({required this.imageUrl, required this.blogName,required this.likes,required this.per});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200], // Background color
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Shadow offset
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
            child:InkWell(
              onTap:() {},
            child: Image.asset(imageUrl, width: 180, height: 100, fit: BoxFit.cover),
          ),
          ),
          Expanded(
          child:Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child:
              Text(
              blogName,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(4.0),
            child:
              Text(
              likes,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.pink),
            ),),
             Padding(
            padding: const EdgeInsets.all(4.0),
            child:
              Text(
              per,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.purple),
            ),),],),),
        ],
      ),
    );
  }
}
class CircularInfoContainer extends StatelessWidget {
  final String label;
  final String value;

  CircularInfoContainer({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blue, // Change the color as needed
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String imageUrl;
  final String doctorName;

  DoctorCard({required this.imageUrl, required this.doctorName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(height: 4.0),
          Text(doctorName, style: TextStyle(fontSize: 12,
          fontWeight: FontWeight.w700,
          color:Colors.purple,
          )),
          ],
      ),
    );
  }
}
class FavouriteTopicCard extends StatelessWidget {
  final String imageUrl;
  final String topicTitle;

  FavouriteTopicCard({required this.imageUrl, required this.topicTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(imageUrl, width: 100, height: 80, fit: BoxFit.cover),
              ),
               Positioned(
                top: 5,
                right: 5,
                child: Icon(Icons.bookmark, color: Colors.blue, size: 14), // Bookmark icon
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(topicTitle, style: TextStyle(fontSize: 12,
          fontWeight:FontWeight.w600,
          color:Colors.purple
          )),
        ],
      ),
    );
  }
}