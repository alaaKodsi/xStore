import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/remotly/homeData.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  goToItmeCategories(List categories, int selectedCat);
}

class HomeControllerImp extends HomeController {
  Myservices myservices = Get.find();

  String? username;
  String? id;

  HomeData homedata = HomeData(Get.find());

  List categories = [];
  List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myservices.sharedPreferences.getString("username");
    id = myservices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("==========================$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
        print("===================--------------------------------------");
        print(items);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItmeCategories(List categories, int selectedCat) {
    Get.toNamed("itmeCat",
        arguments: {"categories": categories, "selectedCat": selectedCat});
  }
}
