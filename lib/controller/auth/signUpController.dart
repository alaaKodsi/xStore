import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstat = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;
  bool isShowPassword = true;

  @override
  goToLogin() {
    Get.offAllNamed("Login");
  }

  @override
  signUp() {
    var formData = formstat.currentState;
    if (formData!.validate()) {
      return "valid";
    } else {
      return "not vaild ";
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
