import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var start = true.obs;
Widget myEbookListTile(
    {required String title, required String minute, required String imageUrl}) {
  return Container(
    height: 67,
    decoration: BoxDecoration(
        color: Color(0xffF5F5F5), borderRadius: BorderRadius.circular(6)),
    child: Row(
      children: [
        // Expanded(
        //   flex: 2,
        //   // child: Container(
        //   //   child: Image.asset(
        //   //     imageUrl,
        //   //     fit: BoxFit.fill,
        //   //   ),
        //   //   margin: EdgeInsets.only(top: 6, bottom: 6, right: 10, left: 10),
        //   //   // margin: EdgeInsets.all(15),
        //   //   decoration:
        //   //       BoxDecoration(borderRadius: BorderRadius.circular(30)),
        //   // )),

        // ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: SizedBox(
            width: 51,
            height: 51,
            child: ClipRRect(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
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
                      title,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text("    •",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFF0055),
                        )),
                    Text("${minute} دقیقه", style: TextStyle(fontSize: 12))
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
              child: Obx(() => IconButton(
                    onPressed: () {
                      start.value = !start.value;
                    },
                    icon: Icon(
                      Icons.star,
                      color: start.value ? Color(0xffFF0055) : Colors.white,
                    ),
                  )),
            ))
      ],
    ),
  );
}
