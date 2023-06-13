import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/data/datasource/remotly/forgotPasword/checkEmail.dart';

abstract class CheckEmailController extends GetxController {
  goToVerifyCode();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;
  GlobalKey<FormState> formstat = GlobalKey<FormState>();
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  StatusRequest? statusRequest;
  @override
  goToVerifyCode() async {
    var formData = formstat.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(
        email.text,
      );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            Get.offAllNamed("verfiyCode", arguments: {"email": email.text});
          });
          update();
        } else {
          Get.defaultDialog(title: "ُWarning", middleText: "Email Not Exist");
          statusRequest = StatusRequest.failure;
        }
      }
    } else {}
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
