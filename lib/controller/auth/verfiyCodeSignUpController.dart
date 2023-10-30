import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/defaultDialog.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/data/datasource/remotly/auth/verfiyCodeSignup.dart';

abstract class VerifiySignUpController extends GetxController {
  goToLogin(String verifycodeSignUp);
  resend();
}

VerifyCodeSignUp verifyCodeSignUp = VerifyCodeSignUp(Get.find());

class VerifiySignUpControllermp extends VerifiySignUpController {
  String? email;
  StatusRequest statusRequest = StatusRequest.none;
  @override
  goToLogin(verifycodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUp.postData(email!, verifycodeSignUp);
    statusRequest = handlingData(response);
    update();
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          Get.offAllNamed("Login");
        });
        update();
      } else {
        defaultDialog("Verify Code not correct");
        statusRequest = StatusRequest.failure;
      }
    }
    Get.offNamed("Login");
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  resend() {
    Get.rawSnackbar(
      message: 'Item Removed from Favorites',
      duration: const Duration(seconds: 2),
      borderRadius: 10,
      backgroundColor: Colors.green,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(20),
    );
    // verifyCodeSignUp.resendCode(email!);
  }
}
