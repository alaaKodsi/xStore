import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/services/local.dart';

class MyMiddelware extends GetMiddleware {
  Myservices myservices = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getBool("onboarding") == true) {
      return const RouteSettings(name: "Login");
    }
    return null;
  }
}
