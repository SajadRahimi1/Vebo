import 'package:flutter/material.dart';
import 'package:vebo/views/colors.dart';
import 'package:vebo/views/screens/login_form.dart';

Widget tabBarRegisterPage() {
  return DefaultTabController(
    length: 2,
    child: Column(
      children: [
        SizedBox(
          height: 40,
          // Signin and Signup tab bar
          child: TabBar(
            indicatorColor: blackColor,
            labelColor: blackColor,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            tabs: [
              Tab(
                text: "ورود",
              ),
              Tab(text: "ثبت نام"),
            ],
          ),
        ),
        // Signin and Signup tab Pages
        Expanded(
            child: TabBarView(
          children: [LoginForm(), Container()],
        ))
      ],
    ),
  );
}
