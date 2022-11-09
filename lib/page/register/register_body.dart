import 'package:flutter/material.dart';
import 'package:gbbirbilenproject/constants/colors.dart';
import 'package:gbbirbilenproject/methods/method.dart';
import 'package:gbbirbilenproject/page/home_page.dart';
import 'package:gbbirbilenproject/page/login/login_page.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
                  "KAYIT OL",
                  style: TextStyle(color: whiteColor, fontSize: 22),
                ))),
            Expanded(
                flex: 1,
                child: Center(
                  child: textfieldbox("İsim Soyisim", Icon(Icons.person)),
                )),
            Expanded(
                flex: 1,
                child: Center(
                    child: textfieldbox("Şifre giriniz", Icon(Icons.key)))),
            Expanded(
                flex: 1, child: Center(child: boxDecorationLogin("Kayıt ol"))),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Bir hesabın mı var? Giriş yap",
                      style: TextStyle(color: themecolor),
                    ),
                  ),
                ))
          ]),
    );
  }
}
