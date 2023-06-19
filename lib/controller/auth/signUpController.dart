import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/defaultDialog.dart';
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
  StatusRequest statusRequest = StatusRequest.none;
  Signupdata signupdata = Signupdata(Get.find());

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
      update();
      var response = await signupdata.postData(
          username.text, email.text, phone.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            Get.offAllNamed("VerfiyCodeSignUp",
                arguments: {"email": email.text});
          });
          update();
        } else {
          defaultDialog("Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
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

  @override
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }
}
