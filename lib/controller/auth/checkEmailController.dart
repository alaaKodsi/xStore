import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';

abstract class CheckEmailController extends GetxController {
  goToLogin();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;
  StatusRequest statusRequest = StatusRequest.none;

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
