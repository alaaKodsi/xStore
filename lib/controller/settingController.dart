import 'package:get/get.dart';
import 'package:xstore/core/services/local.dart';

abstract class SettingController extends GetxController {
  getInfo();
  logout();
}

class SettingControllerImp extends SettingController {
  Myservices myservices = Get.find();
  String? userName;
  String? userEmail;

  @override
  void onInit() {
    super.onInit();
    getInfo();
  }

  @override
  getInfo() {
    userName = myservices.sharedPreferences.getString("username");
    userEmail = myservices.sharedPreferences.getString("email");
  }

  @override
  logout() {
    myservices.sharedPreferences.clear();
    Get.offAllNamed("Login");
  }
}
