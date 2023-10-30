import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/defaultDialog.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
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
  Myservices myservices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;

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
      print("==================$response");
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          if (response['data']['users_approv'] == 1) {
            myservices.sharedPreferences
                .setString('id', response['data']['users_id'].toString());
            myservices.sharedPreferences
                .setString('email', response['data']['users_email']);
            myservices.sharedPreferences
                .setString('username', response['data']['users_name']);
            myservices.sharedPreferences
                .setString('phone', response['data']['users_phone'].toString());
            myservices.sharedPreferences.setBool("islogin", true);

            SchedulerBinding.instance.addPostFrameCallback((_) {
              Get.offAllNamed("home");
            });
          } else {
            Get.toNamed("VerfiyCodeSignUp", arguments: {"email": email.text});
          }
        } else {
          defaultDialog("Email or Password is Wrong Please try anain");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    // });
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
