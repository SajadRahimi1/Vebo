import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/controllers/splash_screen_controler.dart';
import 'package:vebo/views/screens/register_login_page.dart';
import 'package:vebo/views/widgets/tab_bar_register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   final SplashScreenController _splashScreenController =
//       Get.put(SplashScreenController());
//   @override
//   Widget build(BuildContext context) {
//     _splashScreenController;
//     return Scaffold(
//       body: Center(
//         child: Image.asset("assets/images/logo/Logo.png"),
//       ),
//     );
//   }
// }
