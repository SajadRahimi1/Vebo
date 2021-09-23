import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/screens/register_login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Shabnam"),
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}
