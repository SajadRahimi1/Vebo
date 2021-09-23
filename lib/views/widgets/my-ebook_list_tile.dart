import 'package:flutter/material.dart';

Widget MyEbookListTile() {
  return Column(
    children: [
      SizedBox(
        height: 5,
      ),
      Container(
        // margin: EdgeInsets.only(right: 10, left: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        height: 70,
        child: Row(
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "هنر چیست و چرا برای ما اهمیت دارد؟",
                        style: TextStyle(fontFamily: "Shabnam", fontSize: 14),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "آخرین ویرایش، 5 دقیقه قبل",
                          style: TextStyle(
                              fontFamily: "Shabnam",
                              fontSize: 10,
                              color: Color(0xffB2B2B2)),
                        ))
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(),
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 3),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                )),
          ],
        ),
      ),
    ],
  );
}
