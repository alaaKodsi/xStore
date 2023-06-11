import 'package:get/get.dart';
import 'package:xstore/core/class/requests.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(RequestsFromApi());
  }
}
