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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 168, 21, 2)),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(children: [
          Container(
            width: double.infinity,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset("assets/images/logo_1.png"),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.black87,
                        size: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Icon(Icons.favorite, color: Colors.black87, size: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8.0, bottom: 8.0, right: 20),
                      child: Icon(
                        Icons.send,
                        color: Colors.black87,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          storyWidget("assets/images/gul.jpg", "gul_b"),
                          storyWidget("assets/images/rabia.jpg", "rabia_b"),
                          storyWidget("assets/images/nisa.jpeg", "nisa_b"),
                          storyWidget("assets/images/emre.jpeg", "emre_ates"),
                          storyWidget("assets/images/gul.jpg", "gul_b"),
                          storyWidget("assets/images/nisa.jpeg", "nisa_b"),
                          storyWidget("assets/images/rabia.jpg", "rabia_b"),
                          storyWidget("assets/images/emre.jpeg", "emre_ates"),
                          storyWidget("assets/images/nisa.jpeg", "nisa_b"),
                        ],
                      ),
                    ),
                    postItem(
                        "assets/images/emre.jpeg",
                        "assets/images/emre.jpeg",
                        "emre_ates",
                        "Istanbul/Kadıkoy"),
                    postItem("assets/images/gul.jpg", "assets/images/gul.jpg",
                        "gul_b", "Istanbul/Kucukcekmece"),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.home,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.smart_display,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.favorite,
                    size: 28,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.person,
                    size: 32,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Container postItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(avatar),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.asset(
                photo,
              ),
              likeCommentBox(),
              commentBox("rabia_b",
                  "Çok güzel çıkmışsın. Resmen melek gibi. Seni çok özledim"),
              commentBox("nisa_b", "Bayıldımmm, mükemmelsin."),
            ],
          ),
        ),
      );

  Padding likeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.black87,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.comment_bank_outlined,
                color: Colors.black87,
              ),
            ],
          ),
          Icon(
            Icons.flag_circle_outlined,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }

  Padding commentBox(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: name,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              TextSpan(text: " "),
              TextSpan(
                text: comment,
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ])),
          ),
        ],
      ),
    );
  }

  Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.green,
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 103, 1),
                  const Color.fromRGBO(241, 166, 177, 1),
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(1),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 40,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
