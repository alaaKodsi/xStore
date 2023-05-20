import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  goToLogin();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;

  @override
  goToLogin() {
    Get.toNamed("Login");
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
}
