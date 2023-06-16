import 'dart:async';

import 'package:firebase_demo/screen/login_page/login_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () {
      Get.off(() => const LoginPage());
    });
    super.onInit();
  }
}
