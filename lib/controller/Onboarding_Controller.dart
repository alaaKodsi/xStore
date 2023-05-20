import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController;
  int currentPage = 0;

  Myservices myservices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage > onboardingList.length - 1) {
      Get.offAllNamed("Login");
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
