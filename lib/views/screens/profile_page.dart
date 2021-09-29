import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/widgets/my_ebook_widgets.dart';
import 'package:vebo/views/widgets/profile_social_media_widget.dart';

import '../colors.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffefefef),
          elevation: 0,
          // Setting Icon on Top Left
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xffefefef),
        body: Stack(
          children: [
            // Profile Widgets
            Container(
              height: Get.height / 2,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  // Article Information on Top
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "7 محتوا تولید شده",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "7 محتوا مطالعه شده",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )),

                  // Vertical Line for splite
                  Divider(
                    color: Color(0xffCDCDCD),
                    thickness: 2,
                  ),

                  // Profile image & Article List Button
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 35,
                            child: Center(
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            width: Get.width / 2.2,
                            height: Get.height,
                            margin: EdgeInsets.only(top: 20, bottom: 10),
                            decoration: BoxDecoration(
                                color: Color(0xffF9F9F9),
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: InkWell(
                              child: Center(child: Text("لیست مطالب")),
                            ),
                          )
                        ],
                      )),

                  // Person Information (Name, Bio)
                  Expanded(
                      flex: 1,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text("زهرا محمدی", style: TextStyle(fontSize: 18)),
                          Text(
                            "دوبهب فده  عونتم یاهدربراک و یاهباتک .دشاب یم یدربراک یاهرازبا ناوارف افتساهکلب نوتم و اهرگپاچ یلعف طیارش یارب و تسا مزال هک نانچنآرطس",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff666666)),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      )),

                  // Social Network Information(Instagram, Linkedin, Website and ...)
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SocialMediaWidget(
                              image: Image.asset(
                                "assets/images/icons/website.png",
                                height: 50,
                                width: 50,
                              ),
                              title: "وبسایت"),
                          SocialMediaWidget(
                              image: Image.asset(
                                "assets/images/icons/linkedin.png",
                                height: 50,
                                width: 50,
                              ),
                              title: "لینکدین"),
                          SocialMediaWidget(
                              image: Image.asset(
                                "assets/images/icons/instagram.png",
                                height: 50,
                                width: 50,
                              ),
                              title: "اینستاگرام"),
                          SocialMediaWidget(
                              image: Image.asset(
                                "assets/images/icons/twitter.png",
                                height: 50,
                                width: 50,
                              ),
                              title: "توییتر"),
                        ],
                      )),
                ],
              ),
            ),
            _dragableScroll()
          ],
        ),
      ),
    );
  }

  // Draft and Published Article
  DraggableScrollableSheet _dragableScroll() {
    return DraggableScrollableSheet(
      minChildSize: 0.35,
      maxChildSize: 0.9,
      initialChildSize: .35,
      builder: (context, scrollController) {
        return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Scrollbar(
                child: Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 30),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    // Tab bar
                    Container(
                      height: 45,

                      // Tabs background color
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      // Ebook and Voice tab bar
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

                    // Tab Pages
                    Expanded(
                        child: Scrollbar(
                      child: TabBarView(
                        children: [
                          // Ebook Page
                          SingleChildScrollView(
                            controller: scrollController,
                            child: Container(
                              padding: EdgeInsets.only(right: 8, left: 8),
                              child: Column(
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

                          // Voice Page
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
