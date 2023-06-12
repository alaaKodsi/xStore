import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/data/datasource/remotly/auth/verfiyCodeSignup.dart';

abstract class VerifiySignUpController extends GetxController {
  goToLogin(String verifycodeSignUp);
}

VerifyCodeSignUp verifyCodeSignUp = VerifyCodeSignUp(Get.find());

class VerifiySignUpControllermp extends VerifiySignUpController {
  String? email;
  StatusRequest? statusRequest;
  @override
  goToLogin(verifycodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUp.postData(email!, verifycodeSignUp);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          Get.offAllNamed("Login");
        });
        update();
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code not correct");
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
}
