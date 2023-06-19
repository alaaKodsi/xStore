import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/defaultDialog.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/data/datasource/remotly/forgotPasword/verifycode.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  String? email;
  StatusRequest statusRequest = StatusRequest.none;
  VerfiyCodeForgotpasswordData verfiyCodeForgotpasswordData =
      VerfiyCodeForgotpasswordData(Get.find());

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verfiyCodeForgotpasswordData.postData(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          Get.offAllNamed("resetPassword", arguments: {"email": email});
        });
      } else {
        defaultDialog("Code is Wrong plesas try again !");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
