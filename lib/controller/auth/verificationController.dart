import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;

  @override
  checkCode() {}

  @override
  goToResetPassword() async {
    Get.offNamed("resetPassword");
  }

  @override
  void onInit() {
    super.onInit();
  }
}
