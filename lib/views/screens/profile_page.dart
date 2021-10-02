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
          backgroundColor: Color(0xffFFFFFF),
          elevation: 0,
          // Settign Text in top
          centerTitle: true,
          title: Text(
            "تنظیمات",
            style: TextStyle(color: Color(0xffB2B2B2), fontSize: 14),
          ),
        ),
        backgroundColor: Color(0xffFFFFFF),
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
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("زهرا محمدی",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text(
                            "طراح رابط کاربری\nبرنامه نویس وب سایت\nدانشجوی کارشناسی ارشد مهندسی کامپیوتر",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff666666)),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  ),

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
      minChildSize: 0.4,
      maxChildSize: 0.9,
      initialChildSize: .4,
      builder: (context, scrollController) {
        return Container(
            decoration: BoxDecoration(
                color: Color(0xffFEFEFE),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Scrollbar(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      width: Get.width / 10,
                      child: Divider(
                        thickness: 3,
                        color: Color(0xff2A2C2B3B),
                      ),
                    ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "پیش نویس",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  MyEboobWidget(),
                                  Center(
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "بیشتر",
                                          style: TextStyle(color: Colors.black),
                                          // textAlign: TextAlign.center,
                                        )),
                                  ),
                                  Text(
                                    "منتشر شده",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  MyEboobWidget(),
                                  MyEboobWidget(),
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
            ));
      },
    );
  }
}
