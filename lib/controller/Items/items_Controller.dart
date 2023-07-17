// ignore_for_file: file_names
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/data/datasource/remotly/itmesData.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val, String catId);
  getItems(String catId);
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selectedCat;
  late String catId = "1";

  ItmesData itmesDate = ItmesData(Get.find());
  List data = [];

  late StatusRequest statusRequest;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedCat'];
    catId = Get.arguments['catId'];
    getItems(catId);
  }

  @override
  changeCat(val, catId) {
    selectedCat = val;
    getItems(catId);
    update();
  }

  @override
  getItems(catId) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await itmesDate.getData(catId);
    update();

    statusRequest = handlingData(response);
    update();
    if (StatusRequest.success == statusRequest) {
      update();
      if (response['status'] == "success") {
        update();
        data.addAll(response['data']);
        update();
      } else {
        statusRequest = StatusRequest.failure;
        update();
      }
      update();
    }
    update();
  }
}