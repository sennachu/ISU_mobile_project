import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color.fromRGBO(62, 36, 17, 1),
                const Color.fromRGBO(48, 14, 32, 1)
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 10,
                      left: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/logo2.png",
                          width: 100,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.podcasts,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/bn.JPG"),
                              radius: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        onerikutu("Enerjik"),
                        onerikutu("Antrenman"),
                        onerikutu("Keyifli"),
                        onerikutu("Rahatlama"),
                        onerikutu("Parti"),
                        onerikutu("Odaklanma"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(7, 5, 8, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BİR ŞARKIDAN RADYO BAŞLATIN",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hızlı Seçimler",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 3.0, bottom: 3, right: 9, left: 9),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Text("Tümünü Oynat",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      )),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    width: size.width - 40,
                                    child: Column(
                                      children: [
                                        musicRow(
                                            "assets/images/malatya.jpeg",
                                            "Malatya Türküleri",
                                            "Malatyalılar Derneği"),
                                        musicRow("assets/images/motive.jpg",
                                            "One Shot Freestyle", "Motive"),
                                        musicRow("assets/images/radiohead.jpg",
                                            "OK Computer", "Radiohead"),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      musicRow("assets/images/ufo.jpeg",
                                          "Ich bin 2 Berliner", "Ufo361"),
                                      musicRow("assets/images/ak.jpg",
                                          "Dosta Düşmana Karşı", "Ahmet Kaya"),
                                      musicRow("assets/images/sleepdealer.jpg",
                                          "Breaking the Waves", "Sleep Dealer"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Unutulan Favoriler",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 3.0, bottom: 3, right: 9, left: 9),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Text("Tümünü Oynat",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      )),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  musicRow2("assets/images/ld.jpg",
                                      "Songs for Mountains", "Les Discrets"),
                                  musicRow2("assets/images/ak.jpg",
                                      "Dosta Düşmana Karşı", "Ahmet Kaya"),
                                  musicRow2("assets/images/ld.jpg",
                                      "Songs for Mountains", "Les Discrets"),
                                  musicRow2("assets/images/radiohead.jpg",
                                      "OK Computer", "Radiohead"),
                                  musicRow2("assets/images/ld.jpg",
                                      "Songs for Mountains", "Les Discrets"),
                                  musicRow2("assets/images/motive.jpg",
                                      "One Shot Freestyle", "Motive"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(33, 33, 33, 1),
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, right: 30, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        Text(
                          "Ana Sayfa",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.slow_motion_video,
                          color: Colors.white,
                        ),
                        Text(
                          "Sana Özel",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.explore,
                          color: Colors.white,
                        ),
                        Text(
                          "Keşfet",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.play_lesson,
                          color: Colors.white,
                        ),
                        Text(
                          "Kitaplık",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding musicRow2(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 200,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                artist,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget musicRow(String photo, String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                photo,
                width: 90,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(artist,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ))
                ],
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Container onerikutu(String text) {
    return Container(
        padding: const EdgeInsets.only(
            top: 6.0, bottom: 6.0, left: 12.0, right: 12.0),
        margin: const EdgeInsets.only(left: 4, right: 4),
        decoration: BoxDecoration(
          color: Color.fromARGB(20, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color.fromARGB(37, 255, 255, 255)),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ));
  }
}
