import 'package:flutter/material.dart';

import 'my-ebook_list_tile.dart';

Widget MyEboobWidget({required String title}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(
        height: 20,
      ),
      MyEbookListTile(),
      SizedBox(
        height: 15,
      ),
      Center(
        child: TextButton(
            onPressed: () {},
            child: Text(
              "بیشتر",
              style: TextStyle(color: Colors.black),
              // textAlign: TextAlign.center,
            )),
      )
    ],
  );
}
