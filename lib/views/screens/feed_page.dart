import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/widgets/feed_widget.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey,
            body:
                // Container(height: 100, color: Colors.red),
                _draggableScrollableSheet()),
      ),
    );
  }
}

Widget _draggableScrollableSheet() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.only(right: 15, left: 15),
    child: DefaultTabController(
      length: 4,
      child: Column(
        children: [
          SizedBox(
            height: 22,
          ),
          Container(
            height: 45,
            child: TabBar(
              indicatorColor: Color(0xffFF0055),
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 16, fontFamily: "Shabnam"),
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "همه",
                ),
                Tab(text: "ایبوک ها"),
                Tab(
                  text: "ویس ها",
                ),
                Tab(text: "ویبو")
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 24),
                  child: Column(children: [
                    SizedBox(
                      height: Get.height / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          feedWidget(),
                          feedWidget(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "بیشتر",
                                style: TextStyle(
                                  color: Color(0xffB2B2B2),
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height / 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "موضوعات",
                              style: TextStyle(
                                  color: Color(0xff333333), fontSize: 16),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey),
                                width: Get.width / 2.5,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: Text(
                                    "علمی",
                                    style: TextStyle(
                                        color: Color(0xff333333), fontSize: 18),
                                  ),
                                ),
                                height: 40,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  height: 40,
                                  width: Get.width / 2.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "علمی",
                                      style: TextStyle(
                                          color: Color(0xff333333),
                                          fontSize: 18),
                                    ),
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  height: 40,
                                  width: Get.width / 2.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "علمی",
                                      style: TextStyle(
                                          color: Color(0xff333333),
                                          fontSize: 18),
                                    ),
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey),
                                  height: 40,
                                  width: Get.width / 2.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "علمی",
                                      style: TextStyle(
                                          color: Color(0xff333333),
                                          fontSize: 18),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Column(
                        children: List.generate(10, (index) => feedWidget()),
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(),
              SizedBox(),
              SizedBox()
            ],
          ))
        ],
      ),
    ),
  );
}
