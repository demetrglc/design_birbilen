import 'package:flutter/material.dart';
import 'package:gbbirbilenproject/constants/colors.dart';
import 'package:gbbirbilenproject/methods/method.dart';
import 'package:gbbirbilenproject/page/home_page.dart';
import 'package:gbbirbilenproject/page/register/register_body.dart';
import 'package:gbbirbilenproject/page/register/register_page.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Center(
                    child: Text(
                  "GİRİŞ",
                  style: TextStyle(color: whiteColor, fontSize: 22),
                ))),
            Expanded(
                flex: 1,
                child: Center(
                  child: textfieldbox("İsim Soyisim", Icon(Icons.person)),
                )),
            Expanded(
                flex: 1,
                child: Center(child: textfieldbox("Şifre", Icon(Icons.key)))),
            Expanded(
                flex: 1,
                child: Center(
                    child: GestureDetector(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }),
                        child: boxDecorationLogin("GİRİŞ")))),
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "Şifreni mi unttun?",
                    style: TextStyle(fontSize: 15, color: Colors.amber),
                  ),
                )),
            Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      "Kayıt Ol",
                      style: TextStyle(color: themecolor),
                    ),
                  ),
                ))
          ]),
    );
  }
}
