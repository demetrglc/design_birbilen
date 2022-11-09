import 'package:flutter/material.dart';
import 'package:gbbirbilenproject/page/login/login_body.dart';
import 'package:gbbirbilenproject/page/register/register_body.dart';
import 'package:gbbirbilenproject/widget/login_background.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [LoginBackground(), RegisterBody()],
        ),
      ),
    );
  }
}
