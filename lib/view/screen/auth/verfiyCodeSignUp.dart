import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:xstore/controller/auth/verfiyCodeSignUpController.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/constant/imageApp.dart';
import 'package:xstore/view/widget/auth/loading.dart';
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
          builder: (controller) => controller.statusRequest ==
                  StatusRequest.loading
              ? const Loading()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(ImageApp.verifycode, width: 250, height: 250),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Enter Code ",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    OtpTextField(
                      fieldWidth: 50.0,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      showCursor: false,
                      textStyle: const TextStyle(color: Colors.white),
                      focusedBorderColor: primryColor,
                      enabledBorderColor: Colors.white,
                      fillColor: Colors.white,
                      showFieldAsBox: true,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        controller.goToLogin(verificationCode);
                      },
                    ),
                  ],
                ),
        ));
  }
}
