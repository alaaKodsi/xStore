import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Alert ",
      middleText: "Do you want to exit from Application",
      radius: 20,
      titlePadding: const EdgeInsets.all(15),
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
