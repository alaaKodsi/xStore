import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/constant/imageApp.dart';
import 'package:xstore/view/widget/auth/customOtpText.dart';
import 'package:xstore/view/widget/auth/loading.dart';
import '../../../controller/auth/verifyCodeResetPasswordController.dart';
import '../../../core/constant/color.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeControllerImp());
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
        body: GetBuilder<VerifyCodeControllerImp>(
          builder: (controller) => controller.statusRequest ==
                  StatusRequest.loading
              ? const Loading()
              : SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(ImageApp.verifycode,
                          width: 250, height: 250),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Enter Code  ",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      CustomOtpText(onSubmit: (verificationCode) {
                        controller.goToResetPassword(verificationCode);
                      }),
                    ],
                  ),
                ),
        ));
  }
}
