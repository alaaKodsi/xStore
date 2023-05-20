import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  goLogin();
  resetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetPassword() {}

  @override
  goLogin() {
    if (formstate.currentState!.validate()) {
      Get.offAllNamed("Login");
    } else {
      print("Not Valid");
    }
    Get.offAllNamed("Login");
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
