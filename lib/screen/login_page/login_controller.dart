import 'package:firebase_demo/screen/home_screen/home_page.dart';
import 'package:firebase_demo/screen/signup_page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginButtonCondition() {
    Get.off(() => const HomePage());
  }

  void goToSignup() {
    Get.to(() => const SignupPage());
  }
}
