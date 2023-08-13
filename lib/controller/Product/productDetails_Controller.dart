import 'package:get/get.dart';
import 'package:xstore/data/model/itemsModel.dart';

// ignore: camel_case_types
abstract class ProductDetails_controller extends GetxController {
  intialData();
}

// ignore: camel_case_types
class ProductDetails_controllerImp extends ProductDetails_controller {
  late ItmesModel itemsModel;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    itemsModel = Get.arguments['ItmesModel'];
  }
}
