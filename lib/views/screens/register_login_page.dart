import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vebo/views/widgets/tab_bar_register_page.dart';

var height = Get.height.obs;
var visible = false.obs;

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(LogoController(), permanent: false);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Obx(
            () => Visibility(
              visible: visible.value,
              child: Column(
                children: [
                  // Logo section on top of register page
                  SizedBox(
                    height: Get.height / 7,
                  ),
                  // Signup and Signin section under logo section
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: tabBarRegisterPage()),
                  )
                ],
              ),
            ),
          ),
          Obx(
            () => AnimatedContainer(
              duration: Duration(seconds: 2),
              height: height.value,
              color: Colors.white,
              child: Center(
                child: Image.asset(
                  height.value < Get.height
                      ? "assets/images/logo/vebo_img.png"
                      : "assets/images/logo/Logo.png",
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class LogoController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      height.value /= 7;
    });
    Future.delayed(Duration(milliseconds: 5000), () => visible.value = true);
  }
}
