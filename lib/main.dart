import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/widgets/tab_bar_register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(fontFamily: "shabnam"),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            // Logo section on top of register page
            SizedBox(
                height: Get.height / 3,
                child: Center(
                  child: Image.asset("assets/images/logo/Logo.png"),
                )),
            // Signup and Signin section under logo section
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 15, left: 15),
                  child: tabBarRegisterPage()),
            )
          ],
        ),
      ),
    );
  }
}
