import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPassword extends GetxController {
  cheekEmail();
  goToVerifyCode();
}

class ForgotPasswordControllerImp extends ForgotPassword {
  late TextEditingController email;
  GlobalKey<FormState> formstat = GlobalKey<FormState>();

  @override
  goToVerifyCode() {
    var formData = formstat.currentState;
    if (formData!.validate()) {
      Get.offNamed("verfiyCode");
      Get.delete<ForgotPasswordControllerImp>();
    } else {
      return "not vaild ";
    }
  }

  @override
  cheekEmail() {}

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
