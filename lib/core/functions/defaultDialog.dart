import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/constant/color.dart';

String? middleText;
Future<bool> defaultDialog(String middleText) {
  Get.defaultDialog(
      titlePadding: const EdgeInsets.all(15),
      contentPadding: const EdgeInsets.all(20),
      radius: 20,
      backgroundColor: backgroundColor,
      middleTextStyle: const TextStyle(color: Colors.white),
      titleStyle: const TextStyle(color: Colors.white),
      onConfirm: () {
        Get.back();
      },
      title: "ُWarning",
      middleText: middleText);

  return Future.value(true);
}
