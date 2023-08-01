import 'package:get/get.dart';

// ignore: camel_case_types
abstract class ProductDetails_controller extends GetxController {
  intialData();
}

// ignore: camel_case_types
class ProductDetails_controllerImp extends ProductDetails_controller {
  @override
  void onInit() {
    super.onInit();
    intialData();
  }

  @override
  intialData() {}
}
