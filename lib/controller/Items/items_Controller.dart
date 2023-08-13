// ignore_for_file: file_names
import 'package:get/get.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/functions/handlingData.dart';
import 'package:xstore/core/services/local.dart';
import 'package:xstore/data/datasource/remotly/itmesData.dart';
import 'package:xstore/data/model/itemsModel.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val, String catId);
  getItems(String catId);
  goToProductDetails(ItmesModel itmesModel);
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selectedCat;
  late String catId = "1";
  ItmesData itmesDate = ItmesData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  Myservices myservices = Get.find();

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
    var response = await itmesDate.getData(
        catId, myservices.sharedPreferences.getString("id")!);
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

  @override
  goToProductDetails(itmesModel) {
    Get.toNamed("productDetails", arguments: {"ItmesModel": itmesModel});
  }
}
