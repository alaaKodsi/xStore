import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/data/datasource/remotly/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgerPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstat = GlobalKey<FormState>();
  LoginData loginData = LoginData(Get.find());
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;
  StatusRequest? statusRequest;

  @override
  goToSignUp() {
    Get.offAllNamed("signUp");
  }

  @override
  login() async {
    var formData = formstat.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            Get.offAllNamed("home");
          });
          update();
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              middleText: "Email or Password is Wrong Please try anain");
          statusRequest = StatusRequest.failure;
        }
      }
    }
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgerPassword() {
    Get.toNamed("forgetPassword");
  }

  @override
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }
}
