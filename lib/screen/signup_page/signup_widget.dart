import 'package:firebase_demo/screen/signup_page/signup_controller.dart';
import 'package:firebase_demo/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/textfield_common.dart';

Widget signupScreenBodyPart() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
      child: Column(
        children: [
          signupUserNameTextField(),
          const SizedBox(height: 20),
          signupMobilNumberTextField(),
          const SizedBox(height: 20),
          signupEmailTextField(),
          const SizedBox(height: 20),
          signupPasswordTextField(),
          const SizedBox(height: 20),
          submitButton(),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );
}

Widget signupUserNameTextField() {
  return GetBuilder<SignupController>(
    builder: (controller) {
      return textFieldCommon(
          controller.firstNameController, StringRes.userName);
    },
  );
}

Widget signupEmailTextField() {
  return GetBuilder<SignupController>(
    builder: (controller) {
      return textFieldCommon(controller.emailController, StringRes.email);
    },
  );
}

Widget signupMobilNumberTextField() {
  return GetBuilder<SignupController>(
    builder: (controller) {
      return textFieldCommon(
          controller.lastNameController, StringRes.mobileNumber);
    },
  );
}

Widget signupPasswordTextField() {
  return GetBuilder<SignupController>(
    builder: (controller) {
      return textFieldCommon(controller.passwordController, StringRes.password);
    },
  );
}

Widget submitButton() {
  return GetBuilder<SignupController>(
    id: "submit",
    builder: (controller) {
      return ElevatedButton(
          onPressed: () => controller.signupSubmit(),
          child: const Text("Submit"));
    },
  );
}
