import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/constant/color.dart';

// ignore: non_constant_identifier_names
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Alert ",
      titleStyle: const TextStyle(color: Colors.white),
      middleText: "Do you want to exit from Application",
      middleTextStyle: const TextStyle(color: Colors.white),
      radius: 20,
      backgroundColor: backgroundColor,
      titlePadding: const EdgeInsets.all(20),
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: const Text(
              "Comfirm",
              style: TextStyle(color: Colors.green),
            )),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.red),
            ))
      ]);

  return Future.value(true);
}
