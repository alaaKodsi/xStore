import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:xstore/controller/auth/verfiyCodeSignUpController.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/imageApp.dart';
import 'package:xstore/view/widget/auth/customOtpText.dart';
import 'package:xstore/view/widget/customAppbar.dart';
import '../../../core/constant/color.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifiySignUpControllermp());
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: const CustomAppBar(title: "Verification Code"),
        body: GetBuilder<VerifiySignUpControllermp>(
            builder: (controller) => HandlingRequest(
                  statusRequest: controller.statusRequest,
                  widget: SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
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
                  ),
                )));
  }
}
