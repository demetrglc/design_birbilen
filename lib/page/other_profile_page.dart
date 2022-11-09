import 'package:flutter/material.dart';
import 'package:gbbirbilenproject/constants/colors.dart';
import 'package:gbbirbilenproject/data_parameter/person_parameter.dart';

class OtherProfilePage extends StatelessWidget {
  final Person person;

  const OtherProfilePage({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    double fontsize1 = 25.0;
    double fontsize2 = 15.0;
    double boxcircular1 = 15.0;

    double boxcircular2 = 18.0;
    const double containerpadding1 = 8.0;

    return Scaffold(
        backgroundColor: themecolor,
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: (() => Navigator.pop(context)),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.settings),
              ),
            ]),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                person.name,
                style: TextStyle(fontSize: fontsize1, color: whiteColor),
              )),
              Expanded(
                  child: Text(
                "(${person.branch})",
                style: TextStyle(fontSize: fontsize2, color: whiteColor),
              )),
              Expanded(
                flex: 3,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg"),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(containerpadding1),
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(boxcircular2))),
                      child: Padding(
                        padding: const EdgeInsets.all(containerpadding1),
                        child: Center(
                          child: Text(
                            "Hedefi: ${person.goal}",
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                      )),
                ),
              )),
              Expanded(
                  child: Text(
                "135 soru 3345 cevap",
                style: TextStyle(color: whiteColor, fontSize: fontsize2),
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: blackColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(boxcircular1))),
                      child: Padding(
                        padding: const EdgeInsets.all(containerpadding1),
                        child: Row(
                          children: [
                            Icon(
                              Icons.clear,
                              color: whiteColor,
                            ),
                            Text(
                              "Engelle",
                              style: TextStyle(color: whiteColor),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(boxcircular1))),
                      child: Padding(
                        padding: const EdgeInsets.all(containerpadding1),
                        child: Row(
                          children: [
                            Icon(Icons.check),
                            Text("Takip ediliyor"),
                          ],
                        ),
                      ))
                ],
              )),
              Expanded(
                  child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: whiteColor),
                        borderRadius:
                            BorderRadius.all(Radius.circular(boxcircular1))),
                    child: Padding(
                      padding: const EdgeInsets.all(containerpadding1),
                      child: Text(
                        "Cevap bekleyen ... soru var",
                        style: TextStyle(color: whiteColor),
                      ),
                    )),
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "439 TAKİP ETTİKLERİ ",
                    style: TextStyle(color: whiteColor),
                  ),
                  Text("977 TAKİPÇİ",
                      style: TextStyle(
                        color: whiteColor,
                      )),
                ],
              ))
            ],
          ),
        ));
  }
}
