import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/widgets/my-ebook_list_tile.dart';
import 'package:vebo/views/widgets/my_ebook_widgets.dart';

import '../colors.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: Get.height / 2.33,
              color: Color(0xffF5F5F5),
            ),
            _dragableScroll()
          ],
        ),
      ),
    );
  }

  DraggableScrollableSheet _dragableScroll() {
    return DraggableScrollableSheet(
      minChildSize: 0.58,
      maxChildSize: 0.9,
      initialChildSize: .58,
      builder: (context, scrollController) {
        return Container(
            color: Colors.white,
            child: Scrollbar(
                child: Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      // padding: EdgeInsets.only(top: 10),
                      // Tabs background color
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      // Signin and Signup tab bar
                      child: TabBar(
                        indicator: ShapeDecoration(
                            color: blackColor,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)))),
                        indicatorColor: blackColor,
                        automaticIndicatorColorAdjustment: true,
                        unselectedLabelColor: darkGrey.withOpacity(0.7),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: "shabnam"),
                        tabs: [
                          Tab(
                            text: "ایبوک",
                          ),
                          Tab(text: "وویس"),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Scrollbar(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            controller: scrollController,
                            child: Container(
                              padding: EdgeInsets.only(right: 8, left: 8),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  MyEboobWidget(title: "پیش نویس"),
                                  MyEboobWidget(title: "منتشر شده"),
                                ],
                              ),
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            )));
      },
    );
  }
}
