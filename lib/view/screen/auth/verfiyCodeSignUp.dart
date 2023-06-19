import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:xstore/controller/auth/verfiyCodeSignUpController.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/imageApp.dart';
import 'package:xstore/view/widget/auth/customOtpText.dart';
import '../../../core/constant/color.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifiySignUpControllermp());
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
        body: GetBuilder<VerifiySignUpControllermp>(
            builder: (controller) => HandlingRequest(
                  statusRequest: controller.statusRequest,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(ImageApp.verifycode,
                          width: 250, height: 250),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Enter Code ",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      CustomOtpText(
                        onSubmit: (verificationCode) {
                          controller.goToLogin(verificationCode);
                        },
                      ),
                    ],
                  ),
                )));
  }
}
