import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  late PageController pageController;
  var currentIndex = 0.obs;
  final GlobalKey bottomNavigationKey = GlobalKey();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    pageController.dispose();
  }
}
