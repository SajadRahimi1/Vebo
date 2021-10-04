import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/widgets/feed_widget.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.grey,
          body: Stack(
            children: [
              Container(height: Get.height / 3.5, color: Colors.red),
              _draggableScrollableSheet()
            ],
          )),
    );
  }
}

DraggableScrollableSheet _draggableScrollableSheet() {
  return DraggableScrollableSheet(
      minChildSize: 0.75,
      maxChildSize: 0.9,
      initialChildSize: 0.75,
      builder: (context, scrollController) => Container(
            color: Colors.white,
            padding: EdgeInsets.only(right: 15, left: 15),
            child: Scrollbar(
              child: DefaultTabController(
                length: 3,
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
                        labelStyle:
                            TextStyle(fontSize: 16, fontFamily: "Shabnam"),
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(
                            text: "همه",
                          ),
                          Tab(text: "ایبوک ها"),
                          Tab(
                            text: "ویس ها",
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: TabBarView(
                      children: [
                        Container(
                          // color: Colors.cyan,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              feedWidget(),
                              SizedBox(
                                height: 15,
                              ),
                              feedWidget()
                            ],
                          ),
                        ),
                        SizedBox(),
                        SizedBox()
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ));
}
