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
    Get.toNamed("VerfiyCode");
  }

  @override
  cheekEmail() {
    var formData = formstat.currentState;
    if (formData!.validate()) {
      Get.delete();
      return "valid";
    } else {
      return "not vaild ";
    }
  }

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
