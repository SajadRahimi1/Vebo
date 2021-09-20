import 'package:get/get.dart';
import 'package:vebo/views/screens/register_login_page.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
        Duration(milliseconds: 2500),
        () => Get.off(
              () => RegisterPage(),
              duration: Duration(seconds: 2),
            ));
    super.onInit();
  }
}
