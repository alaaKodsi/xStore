import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/checkEmailController.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/customOtpText.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Check Email",
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
          const Padding(
            padding: EdgeInsets.all(19),
            child: Text(
              "We are Sent that code to your Email ",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          CustomOtpText(onSubmit: controller.goToLogin()),
        ],
      ),
    );
  }
}
