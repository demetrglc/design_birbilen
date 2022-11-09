import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gbbirbilenproject/constants/colors.dart';
import 'package:gbbirbilenproject/constants/values.dart';
import 'package:gbbirbilenproject/data/person_data.dart';
import 'package:gbbirbilenproject/data_parameter/person_parameter.dart';
import 'package:gbbirbilenproject/page/other_profile_page.dart';

class PersonListCard extends StatelessWidget {
  final Person person;
  const PersonListCard({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Row(children: [
          Expanded(
              flex: 2,
              child: Column(children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )
              ])),
          Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${person.name} ${person.suranme}",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: size3),
                  ),
                  Text(
                    person.lesson,
                    style: TextStyle(
                        color: drawerbackgroundColors,
                        fontWeight: FontWeight.w500,
                        fontSize: size2),
                  ),
                  Text(
                    person.subject,
                    style: TextStyle(color: Colors.grey, fontSize: size1),
                  ),
                ],
              )),
          Expanded(flex: 2, child: Container())
        ]),
      ),
    );
  }
}
