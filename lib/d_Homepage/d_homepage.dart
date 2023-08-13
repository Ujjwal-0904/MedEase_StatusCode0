import 'package:flutter/material.dart';

import 'blog_home.dart';

void main() {
  runApp(DoctorApp());
}

class DoctorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorHomeScreen(),
    );
  }
}

class DoctorHomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categoryData = [
  {'icon': Icons.calendar_today_outlined, 'title': 'Appointments'},
  {'icon': Icons.local_hospital, 'title': 'Hospital'},
  {'icon': Icons.article, 'title': 'Articles'},
  {'icon': Icons.restaurant, 'title': 'Food Hygiene'},
];
final List<Map<String, dynamic>> articleData = [
  {
    'image': 'assets/images/article1.jpg',
    'author': 'Dr. Jerome Pavard',
    'degree': 'MBBS, MD',
    'likes': 240,
    'views': 1475,
  },
  {
    'image': 'assets/images/article2.jpg',
    'author': 'Dr. Pritam Das',
    'degree': 'MBBS, DNB',
    'likes': 987,
    'views': 2270,
  },
  {
    'image': 'assets/images/article3.jpg',
    'author': 'Dr. Lucas Paulinho',
    'degree': 'MD, DM',
    'likes': 307,
    'views': 1524,
  },
   {
    'image': 'assets/images/article4.jpg',
    'author': 'Dr. Roger Ederson',
    'degree': 'MD, DM',
    'likes': 794,
    'views': 1208,
  },

  // Add more articles as needed
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Dashboard"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add notification button action here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr. Suresh Mishra", style: TextStyle(fontSize: 24,
                  fontWeight:FontWeight.bold,
                  color: Colors.white,
                  )),
                  SizedBox(height:10,),
                  Text("dr.suresh@email.com",
                  style: TextStyle(color:Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings',style:TextStyle(
              color:Colors.blue,),
              ),
              onTap: () {
                // Add settings action here
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout',style: TextStyle(color:Colors.blue),),
              onTap: () {
                // Add logout action here
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Hi Anything you need,",
                style: TextStyle(fontSize: 20,
                color:Colors.purple,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add search button action here
                    },
                    child: Text("Search"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoBox(label: 'Likes', value: '12k',icon:Icons.thumb_up,color_icon:Colors.pink),
                  InfoBox(label: 'Ratings', value: '4.8/5',icon:Icons.star,color_icon:Colors.yellow),
                  InfoBox(label: 'No. of Reviews', value: '774',icon:Icons.comment,color_icon:Colors.blue),
                ],
              ),
            ),
             SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                 height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryData.length,
                  itemBuilder: (context, index) {
                    return CategoryBox(
                      icon: categoryData[index]['icon'],
                      title: categoryData[index]['title'],
                    );
                  },
                ),
              ),
               SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color:Colors.transparent, width: 8),
                       gradient: LinearGradient(
                       colors: [Colors.blue, Colors.green], //
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "48% completed",
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Please complete",
                        style: TextStyle(fontSize: 18,
                        color:Colors.amber,
                        fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Your Profile",
                        style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width:10),
                   IconButton(
                        onPressed: () {
                          // Add arrow button pressed action here
                        },
                        icon: Icon(Icons.arrow_forward),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.person),
                      SizedBox(height: 10),
                     
                ],
              ),
            ),
            SizedBox(height: 10,),
             Padding(
                padding: EdgeInsets.only(left:15),
               child: ElevatedButton(
                      onPressed: () {
                          Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DoctorBlogpage()), // Navigate to DoctorHomepage
    );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: Text("Read Vlogs"),
                    ),
             ),
             SizedBox(height:10),
              Padding(padding: EdgeInsets.only(left:15),
                   child:Text(
                    "Top Articles",
                    style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff330867),
                    )
                   )
                   ,),
            ArticleSection(),
          ],
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final  Color color_icon;

  InfoBox({required this.label, required this.value,required this.icon,required this.color_icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(icon,size:30,color:color_icon),
          SizedBox(height: 5,),
          Text(value, style: TextStyle(fontSize: 18,
          color: Color(0xff2575fc),
          )),
          SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}
class CategoryBox extends StatelessWidget {
  final IconData icon;
  final String title;

  CategoryBox({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30,
            color:Colors.blue,
            ),
            SizedBox(height: 5),
              Text(title,style:TextStyle(color:Colors.black)
              ),
          ],
        ),
      ),
    );
  }
}
class ArticleSection extends StatelessWidget {
  final List<String> names = [
    "Dr Emily Becker", "Dr Carlsen", "Dr Pritam Das",
    "Dr Sandipan Dutta"
  ];
  final List<String> specialist = [
    "Eye Specialist", "Heart Surgeon", "ENT Specialist", "Skin Specialist"
  ];

  
  final List<int> likes = [562, 120, 775, 841];
  final List<int> views = [3400, 4896, 8605, 5280];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280, 
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 240, 
            width: 180, 
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        // Handle article click
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/article${index + 1}.jpg",
                          height: 160, 
                          width: 180, 
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.all(6), 
                        height: 30, 
                        width: 30, 
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 2,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.red,
                            size: 20, // Reduced the size of the icon
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6), 
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        names[index],
                        style: TextStyle(
                          fontSize: 14, 
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        specialist[index],
                        style: TextStyle(
                          fontSize: 8, 
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: 4), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.thumb_up, color: Colors.pink, size: 16),
                              SizedBox(width: 2),
                              Text(
                                "${likes[index]}",
                                style: TextStyle(
                                  fontSize: 10, 
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.remove_red_eye,
                                  color: Colors.purple, size: 16),
                              SizedBox(width: 2),
                              Text(
                                "${views[index]}",
                                style: TextStyle(
                                  fontSize: 10, 
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              textStyle: TextStyle(
                                fontSize: 10, 
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            child: Text("Read Now"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10); 
        },
        itemCount: 4,
      ),
    );
  }
}

 