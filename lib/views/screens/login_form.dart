import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/colors.dart';

class LoginForm extends StatelessWidget {
  var securePassword = true.obs;
  var filled = false.obs;
  String username = "", password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          TextFormField(
            onChanged: (value) {
              username = value;
              if (password.length > 0 && username.length > 0)
                filled.value = true;
              else {
                filled.value = false;
              }
            },
            textDirection: TextDirection.ltr,
            style: TextStyle(fontFamily: "Shabnam", fontSize: 20),
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: UnderlineInputBorder(),
                labelText: "نام کاربری",
                filled: true,
                fillColor: textInputColor),
          ),
          SizedBox(
            height: 30,
          ),
          Obx(() => TextFormField(
                onChanged: (value) {
                  password = value;
                  if (password.length > 0 && username.length > 0)
                    filled.value = true;
                  else {
                    filled.value = false;
                  }
                },
                obscureText: securePassword.value,
                obscuringCharacter: '.',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontFamily: "Shabnam", fontSize: 20),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefix: IconButton(
                      icon: securePassword.value
                          ? Image.asset("assets/images/icons/Hidden.png")
                          : Image.asset(
                              "assets/images/icons/Show.png",
                            ),
                      onPressed: () {
                        securePassword.value = !securePassword.value;
                      },
                    ),
                    focusedBorder: UnderlineInputBorder(),
                    labelText: "رمز عبور",
                    filled: true,
                    fillColor: textInputColor),
              )),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      // color: Colors.cyan,
                      ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Obx(() => ElevatedButton(
                            onPressed: filled.value ? () {} : null,
                            child: SizedBox(
                              width: Get.width,
                              height: 50,
                              child: Center(
                                  child: Text(
                                "وارد میشوم",
                                style: TextStyle(
                                    fontFamily: "Shabnam",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: blackColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)))),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "رمز عبور یادم نیست",
                            style: TextStyle(
                                color: Color(0xffFF0055),
                                fontFamily: "Shabnam",
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
