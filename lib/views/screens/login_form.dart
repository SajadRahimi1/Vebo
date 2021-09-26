import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/colors.dart';
import 'package:vebo/views/screens/main_page.dart';
import 'package:vebo/views/screens/profile_page.dart';
import 'package:vebo/views/widgets/text_input_border.dart';

class LoginForm extends StatelessWidget {
  var securePassword = true.obs;
  @override
  Widget build(BuildContext context) {
    List filled = [false, false].obs;
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          // Username text input
          TextFormField(
            onChanged: (value) {
              value.length > 0 ? filled[0] = true : filled[0] = false;
            },
            textDirection: TextDirection.ltr,
            style: TextStyle(fontFamily: "Shabnam", fontSize: 20),
            decoration: InputDecoration(
                border: textInputBorder(),
                labelStyle: TextStyle(fontFamily: "Shabnam", fontSize: 18),
                labelText: "نام کاربری",
                focusedBorder: UnderlineInputBorder(),
                filled: true,
                fillColor: textInputColor),
          ),
          SizedBox(
            height: 5,
          ),
          // Password text input
          Obx(() => TextFormField(
                onChanged: (value) {
                  value.length > 0 ? filled[1] = true : filled[1] = false;
                },
                obscureText: securePassword.value,
                obscuringCharacter: '•',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontFamily: "Shabnam", fontSize: 20),
                decoration: InputDecoration(
                    // border: InputBorder.none,
                    border: textInputBorder(),
                    prefix: InkWell(
                      child: securePassword.value
                          ? Image.asset(
                              "assets/images/icons/Hidden.png",
                            )
                          : Image.asset(
                              "assets/images/icons/Show.png",
                            ),
                      onTap: () {
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
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(() => ElevatedButton(
                          onPressed: filled[0] && filled[1]
                              ? () {
                                  Get.off(
                                    MainPage(),
                                  );
                                }
                              : null,
                          child: SizedBox(
                            width: Get.width,
                            height: 50,
                            child: Center(
                                child: Text(
                              "وارد میشوم",
                              style: TextStyle(
                                fontFamily: "Shabnam",
                                fontSize: 18,
                              ),
                            )),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: blackColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)))),
                        )),

                    // Forgot password button
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
                )),
          ),

          // Buttons
          // Expanded(
          //   child: Column(
          //     children: [
          //       Expanded(
          //         flex: 1,
          //         child: SizedBox(),
          //       ),
          //       Expanded(
          //         flex: 1,
          //         child: Padding(
          //           padding: const EdgeInsets.only(bottom: 40),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: [
          //               // Login button
          //               Obx(() => ElevatedButton(
          //                     onPressed: filled[0] && filled[1] ? () {} : null,
          //                     child: SizedBox(
          //                       width: Get.width,
          //                       height: 50,
          //                       child: Center(
          //                           child: Text(
          //                         "وارد میشوم",
          //                         style: TextStyle(
          //                             fontFamily: "Shabnam",
          //                             fontSize: 18,
          //                             fontWeight: FontWeight.w700),
          //                       )),
          //                     ),
          //                     style: ElevatedButton.styleFrom(
          //                         primary: blackColor,
          //                         shape: RoundedRectangleBorder(
          //                             borderRadius: BorderRadius.all(
          //                                 Radius.circular(25)))),
          //                   )),

          //               // Forgot password button
          //               TextButton(
          //                   onPressed: () {},
          //                   child: Text(
          //                     "رمز عبور یادم نیست",
          //                     style: TextStyle(
          //                         color: Color(0xffFF0055),
          //                         fontFamily: "Shabnam",
          //                         fontSize: 15,
          //                         fontWeight: FontWeight.w400),
          //                   ))
          //             ],
          //           ),
          //         ),
          //       )
        ],
      ),
    );
  }
}
