import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget feedWidget() {
  return Container(
    height: Get.height / 10,
    width: Get.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Color(0xffF9F9F9)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.vertical,
          children: [
            Text(
              "چگونه کسب و کار خود را گسترده کنیم؟",
              style: TextStyle(fontSize: 16, color: Colors.black),
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
            Text(
              "آخرین ویرایش 5 دقیقه قبل",
              style: TextStyle(fontSize: 12, color: Color(0xffB2B2B2)),
            )
          ],
        ),
        Container(
          child: Image.asset(
            "assets/images/logo/Logo.png",
            fit: BoxFit.fill,
          ),
          margin: EdgeInsets.only(top: 6, bottom: 6, left: 6),
          height: Get.height,
          width: Get.width / 5.5,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        ),
      ],
    ),
  );
}
