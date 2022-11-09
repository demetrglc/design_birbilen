import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gbbirbilenproject/constants/colors.dart';
import 'package:gbbirbilenproject/constants/values.dart';
import 'package:gbbirbilenproject/data/person_data.dart';
import 'package:gbbirbilenproject/page/other_profile_page.dart';
import 'package:gbbirbilenproject/page/question_page.dart';
import 'package:gbbirbilenproject/widget/personlistcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int showDrawer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [drawerbackgroundColors, drawerbackgroundColors],
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
          ),
        ),
        child: Stack(children: [
          SafeArea(
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.55,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                                radius: 35,
                                backgroundColor: topgreycolor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                      "https://www.pngmart.com/files/21/Account-User-PNG-Clipart.png"),
                                )),
                            //REVİZE EDİLECEK YER..........................................************************
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rehber Hoca",
                                  style: TextStyle(color: whiteColor),
                                ),
                                Text("Öğretmen",
                                    style: TextStyle(color: whiteColor))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          ListTile(
                              onTap: () {
                                setState(
                                  () {
                                    showDrawer = 0;
                                  },
                                );
                              },
                              leading: Icon(
                                Icons.home,
                                size: 25.0,
                                color: whiteColor,
                              ),
                              title: Text(
                                "Ana Sayfa",
                                style: TextStyle(
                                    fontSize: drawerfontsize,
                                    color: whiteColor),
                              )),
                          Divider(),
                          drawerColumn("KPSS Odası",
                              Icon(Icons.book, color: whiteColor)),
                          drawerColumn(
                              "YKS Odası", Icon(Icons.book, color: whiteColor)),
                          drawerColumn(
                              "LGS Odası", Icon(Icons.book, color: whiteColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: showDrawer == 1 ? 1 : 0),
              duration: Duration(milliseconds: 300),
              builder: (_, double v, __) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * v)
                    ..rotateY((pi / 6) * v),
                  child: ClipRRect(
                    borderRadius: showDrawer == 1
                        ? BorderRadius.circular(10.0)
                        : BorderRadius.circular(0),
                    child: Scaffold(
                        appBar: AppBar(
                          backgroundColor: themecolor,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    showDrawer = 1;
                                  });
                                },
                                child: Icon(Icons.menu),
                              ),
                              Text("Bir Bilene Sor"),
                              Icon(Icons.notifications)
                            ],
                          ),
                          centerTitle: true,
                        ),
                        body: Stack(
                          children: [
                            Positioned(
                              bottom: 10,
                              left: 20,
                              right: 20,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  color: whiteColor,
                                  size: 45,
                                ),
                                backgroundColor: themecolor,
                              ),
                            ),
                            Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: topgreycolor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "1515 kişi çevirimiçi",
                                            style: TextStyle(
                                                color: cupcolor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: cupcolor,
                                          ),
                                          Text(
                                            "Tüm Sorular >",
                                            style: TextStyle(
                                              color: topwritecolor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 9,
                                    child: ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        itemCount: kpss.length,
                                        itemBuilder: (context, index) =>
                                            GestureDetector(
                                              onTap: (() {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            OtherProfilePage(
                                                                person: kpss[
                                                                    index])));
                                              }),
                                              child: PersonListCard(
                                                  person: kpss[index]),
                                            )

                                        // return PersonListCard(
                                        //     person: personList[index]);

                                        ))
                              ],
                            ),
                          ],
                        )),
                  ),
                );
              }),
          GestureDetector(
            onHorizontalDragUpdate: (value) {
              if (value.delta.dx > 0) {
                setState(() {
                  showDrawer = 1;
                });
              } else {
                setState(() {
                  showDrawer = 0;
                });
              }
            },
          )
        ]),
      ),
    );
  }

  ListTile drawerColumn(String st1, Icon myicon) {
    return ListTile(
        onTap: () {},
        leading: myicon,
        title: Text(
          st1,
          style: TextStyle(fontSize: drawerfontsize, color: whiteColor),
        ));
  }
}
