import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/remotly/homeData.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
}

class HomeControllerImp extends HomeController {
  Myservices myservices = Get.find();

  String? username;
  String? id;

  HomeData homedata = HomeData(Get.find());

  List categories = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myservices.sharedPreferences.getString("username");
    id = myservices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
