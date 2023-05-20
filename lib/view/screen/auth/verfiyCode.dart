import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/verificationController.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/customOtpText.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
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
              "Enter Code  ",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          CustomOtpText(
            onSubmit: controller.goToResetPassword(),
          ),
        ],
      ),
    );
  }
}
