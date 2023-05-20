import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/verfiyCodeSignUpController.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/customOtpText.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiySignUpController controller =
        Get.put(VerfiySignUpController as VerfiySignUpController);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Verification Code",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Enter Code ",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          CustomOtpText(
            onSubmit: controller.goToLogin(),
          ),
        ],
      ),
    );
  }
}
