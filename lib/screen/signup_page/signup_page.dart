import 'package:firebase_demo/screen/signup_page/signup_controller.dart';
import 'package:firebase_demo/screen/signup_page/signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup"),
      ),
      body: signupScreenBodyPart(),
    );
  }
}
