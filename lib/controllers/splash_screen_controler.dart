import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/screens/register_login_page.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Get.off(
      () => RegisterPage(),
      // duration: Duration(seconds: 3),
      // transition: Transition.downToUp,
    );
    super.onInit();
  }
}
