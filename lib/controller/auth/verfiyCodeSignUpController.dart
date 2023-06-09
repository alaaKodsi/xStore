import 'package:get/get.dart';

abstract class VerfiySignUpController extends GetxController {
  goToLogin();
}

class VerfiySignUpControllermp extends VerfiySignUpController {
  @override
  goToLogin() {
    Get.toNamed("Login");
  }

}
