import 'package:flutter/material.dart';

Padding textfieldbox(String spacewrite, Icon loginicon) {
  double pad = 8.0;
  return Padding(
    padding: EdgeInsets.all(pad),
    child: Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(22))),
      child: Padding(
        padding: EdgeInsets.all(pad),
        child: TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 20),
            border: InputBorder.none,
            icon: loginicon,
            hintText: spacewrite,
          ),
        ),
      ),
    ),
  );
}

Padding boxDecorationLogin(String buttonlog) {
  double pad2 = 8.0;
  return Padding(
    padding: EdgeInsets.all(pad2),
    child: Container(
        child: Center(child: Text(buttonlog)),
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(22)))),
  );
}
