import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget SocialMediaWidget({required Image image, required String title}) {
  return Column(
    children: [
      SizedBox(
        height: Get.height / 33,
      ),
      Container(
        decoration:
            BoxDecoration(color: Color(0xffFEFEFE), shape: BoxShape.circle),
        child: image,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(title),
      )
    ],
  );
}
