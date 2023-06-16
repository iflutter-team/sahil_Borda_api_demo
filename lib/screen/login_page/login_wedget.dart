import 'package:firebase_demo/common/textfield_common.dart';
import 'package:firebase_demo/screen/login_page/login_controller.dart';
import 'package:firebase_demo/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget loginScreenBodyPart() {
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
    child: Column(
      children: [
        loginEmailTextField(),
        const SizedBox(height: 20),
        loginPasswordTextField(),
        const SizedBox(height: 20),
        loginButton(),
        const SizedBox(height: 20),
        noAccount(),
      ],
    ),
  );
}

Widget loginEmailTextField() {
  return GetBuilder<LoginController>(
    builder: (controller) {
      return textFieldCommon(controller.emailController, StringRes.email);
    },
  );
}

Widget loginPasswordTextField() {
  return GetBuilder<LoginController>(
    builder: (controller) {
      return textFieldCommon(controller.passwordController, StringRes.password);
    },
  );
}

Widget loginButton() {
  return GetBuilder<LoginController>(
    builder: (controller) {
      return ElevatedButton(
          onPressed: () => controller.loginButtonCondition(),
          child: const Text(StringRes.login));
    },
  );
}

Widget noAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(StringRes.noAccount),
      GetBuilder<LoginController>(
        builder: (controller) {
          return TextButton(
              onPressed: () => controller.goToSignup(),
              child: const Text(StringRes.signup));
        },
      )
    ],
  );
}
