import 'package:firebase_demo/json/api_model.dart';
import 'package:firebase_demo/screen/signup_page/signup_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GetPost? userModel;
  Future userSignup() async {
    Map<String, dynamic> body = {
      "FirstName": firstNameController.text.trim(),
      "LastName": lastNameController.text.trim(),
      "EmailId": emailController.text.trim(),
      "Password": passwordController.text.trim()
    };
    userModel = await SignupApi.postApi(body);
    if (userModel != null && userModel!.status == 1) {
      Get.back();
      Get.snackbar("O Waw!", "Signup success");
    }
  }

  void signupSubmit() {
    userSignup();
    update(["submit"]);
  }
}
