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
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Obx(
            () => Visibility(
              visible: visible.value,
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height / 4,
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
          // Animated Logo in Splash Screen
          Obx(
            () => AnimatedContainer(
              duration: Duration(milliseconds: 1500),
              height: height.value,
              // color: Colors.black,
              child: Center(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image.asset(
                      height.value < Get.height
                          ? "assets/images/logo/vebo_img.png"
                          : "assets/images/logo/Logo.png",
                    ),
                  ),
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
    Future.delayed(Duration(seconds: 3), () => height.value /= 3.57);
    Future.delayed(Duration(milliseconds: 4600), () => visible.value = true);
  }
}
