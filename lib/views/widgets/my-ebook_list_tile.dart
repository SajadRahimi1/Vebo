import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyEbookListTile() {
  return Container(
    height: 67,
    decoration: BoxDecoration(
        color: Color(0xffF5F5F5), borderRadius: BorderRadius.circular(6)),
    child: Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              child: Image.asset(
                "assets/images/logo/Logo.png",
              ),
              margin: EdgeInsets.only(top: 6, bottom: 6, right: 10, left: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
            )),
        Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    Text(
                      "چگونه کسب و کار را گسترده کنیم؟",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text("  •",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffFF0055),
                        )),
                    Text("5 دقیقه", style: TextStyle(fontSize: 12))
                  ],
                ),
                Text(
                  "آخرین ویرایش 5 دقیقه قبل",
                  style: TextStyle(fontSize: 12, color: Color(0xffB2B2B2)),
                )
              ],
            )),
        Expanded(
            flex: 1,
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: Color(0xffFF0055),
                ),
              ),
            ))
      ],
    ),
  );
}
