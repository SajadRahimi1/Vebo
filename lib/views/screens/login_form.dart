import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/colors.dart';

class LoginForm extends StatelessWidget {
  var securePassword = true.obs;
  List filled = [false, false].obs;

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
              value.length > 0 ? filled[0] = true : filled[0] = false;
            },
            textDirection: TextDirection.ltr,
            style: TextStyle(fontFamily: "Shabnam", fontSize: 20),
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: UnderlineInputBorder(),
                labelStyle: TextStyle(fontFamily: "Shabnam", fontSize: 18),
                labelText: "نام کاربری",
                filled: true,
                fillColor: textInputColor),
          ),
          Obx(() => TextFormField(
                onChanged: (value) {
                  value.length > 0 ? filled[1] = true : filled[1] = false;
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
                    labelStyle: TextStyle(fontFamily: "Shabnam", fontSize: 18),
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
                            onPressed: filled[0] && filled[1] ? () {} : null,
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
