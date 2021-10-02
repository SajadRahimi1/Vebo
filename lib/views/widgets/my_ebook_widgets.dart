import 'package:flutter/material.dart';

import 'my-ebook_list_tile.dart';

Widget MyEboobWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 20,
      ),
      MyEbookListTile(),
      SizedBox(
        height: 15,
      ),
    ],
  );
}
