import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/remotly/cart.dart';
import 'package:xstore/data/model/itemsModel.dart';

// ignore: camel_case_types
abstract class ProductDetails_controller extends GetxController {
  intialData();
}

// ignore: camel_case_types
class ProductDetails_controllerImp extends ProductDetails_controller {
  CartData cartData = CartData(Get.find());

  Myservices myservices = Get.find();
  late StatusRequest statusRequest;
  late ItmesModel itemsModel;
  int countitems = 0;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() async {
    statusRequest = StatusRequest.loading;
    itemsModel = Get.arguments['ItmesModel'];
    countitems = await getCountItems(itemsModel.itemsId!);
    statusRequest = StatusRequest.success;
    update();
  }

  getCountItems(String itemsid) async {
    statusRequest = StatusRequest.loading;
    var response = await cartData.getCountItems(
        myservices.sharedPreferences.getString("id")!, itemsid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        int countitems = 0;
        countitems = int.parse(response['data']);
        return countitems;
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  addItems(String itemsid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.add(
        myservices.sharedPreferences.getString("id")!, itemsid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  removeitems(String itemsid) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await cartData.remove(
        myservices.sharedPreferences.getString("id")!, itemsid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  add() {
    addItems(itemsModel.itemsId!);
    countitems++;
    update();
  }

  remove() {
    if (countitems > 0) {
      removeitems(itemsModel.itemsId!);
      countitems--;
      update();
    }
  }
}
