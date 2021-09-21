import 'package:flutter/material.dart';
import 'package:vebo/views/colors.dart';
import 'package:vebo/views/screens/login_form.dart';
import 'package:vebo/views/screens/signup_form.dart';

Widget tabBarRegisterPage() {
  return DefaultTabController(
    length: 2,
    child: Column(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.all(Radius.circular(25))),
          // Signin and Signup tab bar
          child: TabBar(
            indicator: ShapeDecoration(
                color: blackColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
            indicatorColor: blackColor,
            automaticIndicatorColorAdjustment: true,
            unselectedLabelColor: darkGrey.withOpacity(0.7),
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "shabnam"),
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
          children: [LoginForm(), SignupForm()],
        ))
      ],
    ),
  );
}
