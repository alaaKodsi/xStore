import 'package:get/get.dart';

abstract class VerifiySignUpController extends GetxController {
  goToLogin();
}

class VerifiySignUpControllermp extends VerifiySignUpController {
  @override
  goToLogin() async {
    Get.offNamed("Login");
  }

  @override
  void onInit() {
    super.onInit();
  }
}
