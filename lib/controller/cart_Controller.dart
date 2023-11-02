import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/remotly/cart.dart';

// ignore: camel_case_types
abstract class CartController extends GetxController {
  addToCart(String itemId);
  removeFromCart(String itemId);
  removeAllData(String itemId);
}

class CartControllerImp extends CartController {
  CartData cartData = CartData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  Myservices myservices = Get.find();

  @override
  addToCart(itemId) async {
    statusRequest = StatusRequest.loading;
    var response = await cartData.add(
        myservices.sharedPreferences.getString("id")!, itemId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          message: 'Item Added to Cart',
          duration: const Duration(seconds: 2),
          animationDuration: const Duration(milliseconds: 500),
          borderRadius: 10,
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(20),
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  @override
  removeFromCart(itemId) async {
    statusRequest = StatusRequest.loading;
    var response = await cartData.remove(
        myservices.sharedPreferences.getString("id")!, itemId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          message: 'Item Removed from Cart',
          duration: const Duration(seconds: 2),
          borderRadius: 10,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(20),
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  @override
  removeAllData(itemId) async {
    statusRequest = StatusRequest.loading;
    var response = await cartData.removeAllItems(
        myservices.sharedPreferences.getString("id")!, itemId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        update();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  // getCountItems(itemId) async {
  //   statusRequest = StatusRequest.loading;
  //   var response = await cartData.getCountItems(
  //       myservices.sharedPreferences.getString("id")!, itemId);
  //   statusRequest = handlingData(response);
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       // int countItems = 0;

  //     } else {
  //       statusRequest = StatusRequest.failure;
  //     }
  //   }
  // }
}
