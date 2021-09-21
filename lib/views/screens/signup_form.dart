import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian/persian.dart';

import '../colors.dart';

List filled = [false, false, false].obs;

class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FormTest(),
        Obx(
          () => ElevatedButton(
            onPressed: filled[0] & filled[1] & filled[2] ? () {} : null,
            child: SizedBox(
              width: Get.width,
              height: 50,
              child: Center(
                  child: Text(
                "ثبت نام میکنم",
                style: TextStyle(
                    fontFamily: "Shabnam",
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              )),
            ),
            style: ElevatedButton.styleFrom(
                primary: blackColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
        )
      ],
    ));
  }
}

class FormTest extends StatelessWidget {
  var securePassword = true.obs;
  List inputText = ["", "", ""];
  final _phoneNumberInputController = TextEditingController();
  final _usernameInputController = TextEditingController();
  final _passwordInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => TextFormField(
            onChanged: (value) {
              value.length > 4 ? filled[0] = true : filled[0] = false;
            },
            textDirection: TextDirection.ltr,
            style: TextStyle(fontFamily: "Shabnam", fontSize: 20),
            decoration: InputDecoration(
                border: InputBorder.none,
                prefix: filled[0]
                    ? Image.asset("assets/images/icons/Checked.png")
                    : IconButton(
                        onPressed: () => _phoneNumberInputController.text = "",
                        icon: Image.asset("assets/images/icons/Close.png")),
                focusedBorder: UnderlineInputBorder(),
                labelText: "نام کاربری*",
                labelStyle: TextStyle(fontFamily: "Shabnam", fontSize: 18),
                filled: true,
                fillColor: textInputColor),
          ),
        ),
        Obx(() => TextFormField(
              controller: _passwordInputController,
              onChanged: (value) {
                value.length > 6 ? filled[1] = true : filled[1] = false;
              },
              obscureText: securePassword.value,
              obscuringCharacter: '.',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontFamily: "Shabnam", fontSize: 20),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefix: filled[1]
                      ? Image.asset("assets/images/icons/Checked.png")
                      : IconButton(
                          onPressed: () => _passwordInputController.text = "",
                          icon: Image.asset("assets/images/icons/Close.png"),
                        ),
                  focusedBorder: UnderlineInputBorder(),
                  labelText: "رمز عبور*",
                  labelStyle: TextStyle(fontFamily: "Shabnam", fontSize: 18),
                  filled: true,
                  fillColor: textInputColor),
            )),
        Obx(
          () => TextFormField(
            controller: _phoneNumberInputController,
            onChanged: (value) {
              filled[2] = false;
              GetUtils.isPhoneNumber(value) && value.length > 10
                  ? filled[2] = true
                  : filled[2] = false;
            },
            textDirection: TextDirection.ltr,
            keyboardType: TextInputType.number,
            style: TextStyle(fontFamily: "Shabnam", fontSize: 20),
            decoration: InputDecoration(
                prefix: filled[2]
                    ? Image.asset("assets/images/icons/Checked.png")
                    : IconButton(
                        onPressed: () => _phoneNumberInputController.text = "",
                        icon: Image.asset("assets/images/icons/Close.png")),
                border: InputBorder.none,
                focusedBorder: UnderlineInputBorder(),
                labelText: "شماره موبایل*",
                labelStyle: TextStyle(fontFamily: "Shabnam", fontSize: 18),
                filled: true,
                fillColor: textInputColor),
          ),
        )
      ],
    );
  }
}
