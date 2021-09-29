import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/controllers/main_page_controller.dart';
import 'package:vebo/views/screens/profile_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainPageController _controller =
        Get.put(MainPageController(), permanent: false);
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          // Pages
          children: [
            Container(
              color: Color(0xffefefef),
            ),
            Container(
              color: Color(0xffefefef),
            ),
            Container(
              color: Color(0xffefefef),
            ),
            Container(
              color: Color(0xffefefef),
            ),
            Profile()
          ],
          controller: _controller.pageController,
        ),
      ),
      // Bottom Navigation Bar Items
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_box_outlined,
                  ),
                  label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: ""),
            ],
            onTap: (value) {
              _controller.currentIndex.value = value;
              _controller.pageController.jumpToPage(value);
            },
            selectedIconTheme: IconThemeData(color: Color(0xffFF0055)),
            unselectedIconTheme: IconThemeData(color: Colors.black),
            iconSize: 30,
            currentIndex: _controller.currentIndex.value,
            key: _controller.bottomNavigationKey,
          )),
    );
  }
}
