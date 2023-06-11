import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/data/datasource/remotly/auth/signup.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
  showPassword();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstat = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;

  bool isShowPassword = true;
  late StatusRequest statusRequest;
  Signupdata signupdata = Signupdata(Get.find());
  List data = [];

  @override
  goToLogin() {
    Get.offAllNamed("Login");
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  signUp() async {
    var formData = formstat.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await signupdata.postData(
          username.text, email.text, phone.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed("VerfiyCode");
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: " Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
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

  @override
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }
}
