// ignore_for_file: file_names
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/remotly/myFavoriteData.dart';
import 'package:xstore/data/model/myFavorite.dart';

abstract class MyFavoritController extends GetxController {
  getData();
}

MyFavoriteData myfavoriteData = MyFavoriteData(Get.find());
late StatusRequest statusRequest;
Myservices myservices = Get.find();
List data = [];

class MyFavoritControllerImp extends MyFavoritController {
  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await myfavoriteData
        .getData(myservices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List responseData = response['data'];
        data.addAll(responseData.map((e) => MyFavoriteModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }
}
