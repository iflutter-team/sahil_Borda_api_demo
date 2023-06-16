import 'package:firebase_demo/screen/login_page/login_controller.dart';
import 'package:firebase_demo/screen/login_page/login_wedget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: loginScreenBodyPart(),
    );
  }
}
