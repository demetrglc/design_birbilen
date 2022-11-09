import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gbbirbilenproject/constants/colors.dart';
import 'package:gbbirbilenproject/data/person_data.dart';
import 'package:gbbirbilenproject/data_parameter/person_parameter.dart';
import 'package:gbbirbilenproject/main.dart';

class QuestionPage extends StatelessWidget {
  final Person person;
  const QuestionPage({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themecolor,
        leading: Icon(
          Icons.chevron_left,
          size: 45,
        ),
        title: Text("Geri"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.network(
                            "https://www.systemdefence.com/images/team/2818421955628-624-male-icon.jpg"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Text(person.name), Text(person.lesson)],
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.black54,
                            ),
                            Text(
                              "Kişiyi Takip Et",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 6,
              child: Container(
                child: Image.network(
                    "https://avatars.mds.yandex.net/i?id=8a97e11e079f121b24f10da3c4513569_l-5225958-images-thumbs&ref=rim&n=13&w=1024&h=768"),
              )),
          Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.black54,
                        ),
                        Text(
                          "Soruyu takip et",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.black54,
                        ),
                        Text(
                          "Paylaş",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: themecolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Center(
                            child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Cevapla",
                        style: TextStyle(color: whiteColor),
                      ),
                    ))),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
