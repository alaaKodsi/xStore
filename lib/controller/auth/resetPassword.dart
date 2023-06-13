import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/data/datasource/remotly/forgotPasword/resetPassword.dart';

abstract class ResetPasswordController extends GetxController {
  goLogin();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;
  String? email;
  StatusRequest? statusRequest;
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());

  @override
  goLogin() async {
    if (password.text != repassword.text) {
      Get.defaultDialog(title: "ُWarning", middleText: "Not match password");
    } else if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email!, password.text);
      update();

      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            Get.offAllNamed("Login");
          });
          update();
        } else {
          Get.defaultDialog(title: "ُWarning", middleText: "Please try again");
          statusRequest = StatusRequest.failure;
        }
      }
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
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
