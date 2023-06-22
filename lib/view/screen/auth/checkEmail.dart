import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/checkEmailController.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/view/widget/auth/customOtpText.dart';
import 'package:xstore/view/widget/customAppbar.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CheckEmailControllerImp());
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: const CustomAppBar(title: "Check Email"),
        body: GetBuilder<CheckEmailControllerImp>(
            builder: (controller) => HandlingRequest(
                  statusRequest: controller.statusRequest,
                  widget: Column(
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
                )));
  }
}
