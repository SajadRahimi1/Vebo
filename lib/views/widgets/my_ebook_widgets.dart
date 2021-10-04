import 'package:flutter/material.dart';

import 'my-ebook_list_tile.dart';

Widget MyEboobWidget(
    {required String title, required String minute, required String imageUrl}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 20,
      ),
      myEbookListTile(title: title, minute: minute, imageUrl: imageUrl),
      SizedBox(
        height: 15,
      ),
    ],
  );
}
