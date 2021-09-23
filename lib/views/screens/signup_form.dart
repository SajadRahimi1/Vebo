import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/widgets/text_input_border.dart';
import '../colors.dart';

List filled = [false, false, false].obs;

class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    filled = [false, false, false].obs;
    return Container(
        child: Column(
      children: [
        SingupForm(),

        // Signup button
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Obx(
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
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class SingupForm extends StatelessWidget {
  var securePassword = true.obs;
  List inputText = ["", "", ""];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        // Username text input
        Obx(
          () => TextFormField(
            onChanged: (value) {
              value.length > 4 ? filled[0] = true : filled[0] = false;
            },
            textDirection: TextDirection.ltr,
            style: TextStyle(fontFamily: "Shabnam", fontSize: 18),
            decoration: InputDecoration(
                border: textInputBorder(),
                prefix: filled[0]
                    ? Image.asset("assets/images/icons/Checked.png")
                    : Image.asset("assets/images/icons/Close.png"),
                focusedBorder: UnderlineInputBorder(),
                labelText: "نام کاربری*",
                filled: true,
                fillColor: textInputColor),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        // Password text input
        Obx(() => TextFormField(
              onChanged: (value) {
                value.length > 6 ? filled[1] = true : filled[1] = false;
              },
              obscureText: securePassword.value,
              obscuringCharacter: '•',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontFamily: "Shabnam", fontSize: 18),
              decoration: InputDecoration(
                  border: textInputBorder(),
                  prefix: filled[1]
                      ? Image.asset("assets/images/icons/Checked.png")
                      : Image.asset("assets/images/icons/Close.png"),
                  focusedBorder: UnderlineInputBorder(),
                  labelText: "رمز عبور*",
                  filled: true,
                  fillColor: textInputColor),
            )),
        SizedBox(
          height: 5,
        ),
        // Phone number text input
        Obx(
          () => TextFormField(
            onChanged: (value) {
              filled[2] = false;
              GetUtils.isNumericOnly(value) &&
                      value.length > 10 &&
                      value.startsWith("09")
                  ? filled[2] = true
                  : filled[2] = false;
            },
            textDirection: TextDirection.ltr,
            keyboardType: TextInputType.number,
            style: TextStyle(fontFamily: "Shabnam", fontSize: 18),
            maxLength: 11,
            decoration: InputDecoration(
                prefix: filled[2]
                    ? Image.asset("assets/images/icons/Checked.png")
                    : Image.asset("assets/images/icons/Close.png"),
                border: textInputBorder(),
                focusedBorder: UnderlineInputBorder(),
                labelText: "شماره موبایل*",
                filled: true,
                fillColor: textInputColor),
          ),
        )
      ],
    );
  }
}
