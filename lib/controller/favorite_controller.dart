import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/remotly/favorite.dart';

// ignore: camel_case_types
class Favorite_controller extends GetxController {
  Map<String, String> isFavorite = {};
  FavoriteData favoriteData = FavoriteData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  Myservices myservices = Get.find();

  setFavorite(String id, String val) {
    isFavorite[id] = val;
    update();
  }

  addData(String itemId) async {
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.add(
        myservices.sharedPreferences.getString("id")!, itemId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          message: 'Item Added to Favorites',
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

  removeData(String itemId) async {
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.remove(
        myservices.sharedPreferences.getString("id")!, itemId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          message: 'Item Removed from Favorites',
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
}
