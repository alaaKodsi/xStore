import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:xstore/controller/auth/verfiyCodeSignUpController.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/constant/imageApp.dart';
import 'package:xstore/view/widget/auth/customElevatedButton.dart';
import 'package:xstore/view/widget/auth/customOtpText.dart';
import 'package:xstore/view/widget/customAppbar.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifiySignUpControllermp());
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: const CustomAppBar(title: "Verification Code"),
        body: ListView(
          children: [
            GetBuilder<VerifiySignUpControllermp>(
                builder: (controller) => HandlingRequest(
                      statusRequest: controller.statusRequest,
                      widget: SizedBox(
                        height: MediaQuery.of(context).size.height / 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset(ImageApp.verifycode,
                                width: 250, height: 250),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "Enter the Code from ${controller.email}",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomOtpText(
                              onSubmit: (verificationCode) {
                                controller.goToLogin(verificationCode);
                              },
                            ),
                            const SizedBox(
                              height: 75,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 50),
                              child: CustomElevatedButton(
                                text: "Resend Code",
                                onPressed: () {
                                  controller.resend();
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
          ],
        ));
  }
}
