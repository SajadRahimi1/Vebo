import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/widgets/my-ebook_list_tile.dart';

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
              color: Colors.red,
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
            decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Scrollbar(
                child: Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: SizedBox(
                          height: 40,
                          child: TabBar(
                            automaticIndicatorColorAdjustment: true,
                            unselectedLabelColor: Color(0xffCFCFCF),
                            indicatorColor: Colors.black,
                            labelColor: Colors.black,
                            tabs: [
                              Tab(text: "ایبوک های من"),
                              Tab(
                                text: "ویس های من",
                              )
                            ],
                          )),
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
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                      width: Get.width,
                                      child: Text(
                                        "   پیش نویس ها",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontFamily: "Shabnam",
                                            fontSize: 12,
                                            color: Color(0xff808080)),
                                      )),
                                  MyEbookListTile(),
                                  MyEbookListTile(),
                                  MyEbookListTile(),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "بیشتر",
                                        style:
                                            TextStyle(color: Color(0xffB2B2B2)),
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                      width: Get.width,
                                      child: Text(
                                        "   منتشر شده ها",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontFamily: "Shabnam",
                                            fontSize: 12,
                                            color: Color(0xff808080)),
                                      )),
                                  MyEbookListTile(),
                                  MyEbookListTile(),
                                  MyEbookListTile(),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "بیشتر",
                                        style:
                                            TextStyle(color: Color(0xffB2B2B2)),
                                      ))
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
