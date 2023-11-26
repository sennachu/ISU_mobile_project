// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 68)),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Divider(),
                      searchBox(),
                      topLocations(),
                      Divider(),
                      nearLoc(),
                      Divider(),
                      suggestions(),
                      Divider(),
                      topRated(),
                    ],
                  ),
                ),
              ),
            ),
            bottomMenu(),
          ],
        ),
      ),
    );
  }

  Widget topRated() => Container(
        child: Column(
          children: [
            titleItem("Top Rated", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  locationItem("assets/images/besk.jpg", "Beşiktaş",
                      "5km from you", "11 £"),
                  locationItem("assets/images/kad.jpg", "Kadıköy",
                      "15km from you", "10 £"),
                  locationItem("assets/images/sefakoy.jpg", "Sefaköy",
                      "1km from you", "5 £"),
                ],
              ),
            )
          ],
        ),
      );

  Widget suggestions() => Container(
        child: Column(
          children: [
            titleItem("Suggestions", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  locationItem("assets/images/sefakoy.jpg", "Sefaköy",
                      "1km from you", "11 £"),
                  locationItem("assets/images/kad.jpg", "Kadıköy",
                      "15km from you", "10 £"),
                  locationItem("assets/images/avc.jpg", "Avcılar",
                      "5km from you", "5 £"),
                ],
              ),
            )
          ],
        ),
      );

  Widget nearLoc() => Container(
        child: Column(
          children: [
            titleItem("Near you", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  locationItem("assets/images/atakoy.avif", "Ataköy",
                      "7km from you", "14 £"),
                  locationItem("assets/images/bahc.jpg", "Bahçelievler",
                      "5km from you", "10 £"),
                  locationItem("assets/images/besk.jpg", "Beşiktaş",
                      "15km from you", "50 £"),
                ],
              ),
            )
          ],
        ),
      );

  Container locationItem(
          String photo, String title, String description, String price) =>
      Container(
        width: 165,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(255, 243, 240, 240),
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(photo, width: 200)),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.grey, size: 11),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 125, 87, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    )),
              ],
            )
          ],
        ),
      );

  Widget topLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleItem("Top Walkers", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  storyItems("assets/images/p1.jpeg", "Nisa"),
                  storyItems("assets/images/p2.jpeg", "Atakan"),
                  storyItems("assets/images/p3.jpeg", "Kenan"),
                  storyItems("assets/images/p4.jpeg", "Burak"),
                  storyItems("assets/images/p5.jpeg", "Tuana"),
                  storyItems("assets/images/p6.jpeg", "Murathan"),
                  storyItems("assets/images/p7.jpeg", "Arya"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget searchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Kücükcekmece/Istanbul",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 17,
              color: Color.fromRGBO(236, 125, 87, 1),
            ),
          ],
        ),
      );

  Widget storyItems(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 164, 72, 44),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Padding titleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: 80,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Sena",
              style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Explore Istanbul City",
              style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.all(6.0),
              child: Icon(
                Icons.sunny,
                color: Color.fromRGBO(236, 125, 87, 1),
                size: 20,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.all(6.0),
              child: Icon(
                Icons.notifications,
                size: 20,
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget bottomMenu() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 243, 243, 243),
        ),
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottomMenuItem("Home", Icons.home, true),
          bottomMenuItem("Moments", Icons.groups, false),
          highLigtedItem(
            "Book",
            Icons.maps_ugc,
          ),
          bottomMenuItem("Chat", Icons.forum, false),
          bottomMenuItem("Profile", Icons.person, false),
        ],
      ),
    );
  }

  Widget bottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 28,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }

  Widget highLigtedItem(
    String title,
    IconData icon,
  ) {
    var renk = Color.fromRGBO(236, 125, 87, 1);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 35,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }
}
