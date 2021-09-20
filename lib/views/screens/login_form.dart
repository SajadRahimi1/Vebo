import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/colors.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var filled = false.obs;
    return Container(
      child: Column(
        children: [
          Obx(() => SizedBox(
              height: filled.value ? 10 : 80,
              child: Center(
                child: Text(
                  "از دیدن دوباره شما خوشحالیم!",
                  style: TextStyle(color: darkGrey),
                ),
              ))),
          TextFormField(
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(
                prefixIcon: IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () => filled.value = true,
            )),
          )
        ],
      ),
    );
  }
}
