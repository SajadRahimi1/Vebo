import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget feedWidget() {
  return Container(
    height: 67,
    decoration: BoxDecoration(
        color: Color(0xffF9F9F9), borderRadius: BorderRadius.circular(6)),
    child: Row(
      children: [
        Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "تجربه بازدید از تاج محل",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text(
                  "آخرین ویرایش 5 دقیقه قبل",
                  style: TextStyle(fontSize: 12, color: Color(0xffB2B2B2)),
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: SizedBox(
            width: 51,
            height: 51,
            child: ClipRRect(
              child: Image.asset(
                "assets/images/tajmahal.jpg",
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ],
    ),
  );
}
