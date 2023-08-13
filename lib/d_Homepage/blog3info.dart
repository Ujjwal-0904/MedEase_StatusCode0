import 'package:flutter/material.dart';

import '../p_Homepage/p_home.dart';

class Blog3DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/blog3.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {

                      },
                    ),
                  ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back,
                    color: Colors.blue,
                    size: 40,
                  ),
                  onPressed:(){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const Patient_Homepage()));
                  },
                ),
                )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Small lymphatic networks called plexuses exist beneath each of the three layers of the heart. These networks collect into a main left and a main right trunk, which travel up the groove between the ventricles that exists on the heart's surface, receiving smaller vessels as they travel up. ",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Add read more button action here
                    },
                    child: Text("Read More"),
                    style:  ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                     foregroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up, color: Colors.blue),
                          SizedBox(width: 4),
                          Text("123"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.comment, color: Colors.green),
                          SizedBox(width: 4),
                          Text("45"),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.share, color: Colors.grey),
                        onPressed: () {
                          // Add share button action here
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            MoreBlogsSection(),
          ],
        ),
      ),
    );
  }
}
class MoreBlogsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "More Blogs",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              BlogThumbnailCard(
                imageUrl: "assets/images/moreblog1.jpg",
                likes: "2k+",
                comments: "345",
              ),
              BlogThumbnailCard(
                imageUrl: "assets/images/moreblog2.jpg",
                likes: " 1.5k+",
                comments: "230",
              ),
              BlogThumbnailCard(
                imageUrl: "assets/images/moreblog3.jpg",
                likes: "800+",
                comments: "120",
              ),
              // Add more BlogThumbnailCard widgets as needed
            ],
          ),
        ),
      ],
    );
  }
}

class BlogThumbnailCard extends StatelessWidget {
  final String imageUrl;
  final String likes;
  final String comments;

  BlogThumbnailCard({
    required this.imageUrl,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Image.asset(imageUrl, height: 100, fit: BoxFit.cover),
          ),
          SizedBox(height: 2),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.thumb_up, color: Colors.blue),
                  SizedBox(width: 2),
                  Text(likes),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.comment, color: Colors.green),
                  SizedBox(width:2),
                  Text(comments),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Blog3DetailPage(),
  ));
}
