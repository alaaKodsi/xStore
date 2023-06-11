import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:xstore/controller/auth/verfiyCodeSignUpController.dart';
import 'package:xstore/core/constant/imageApp.dart';

import '../../../core/constant/color.dart';
import '../../widget/auth/customOtpText.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifiySignUpControllermp controller = Get.put(VerifiySignUpControllermp());
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
          Lottie.asset(ImageApp.verifycode, width: 250, height: 250),
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
