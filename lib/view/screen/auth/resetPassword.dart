import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/resetPassword.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/view/widget/auth/customElevatedButton.dart';
import 'package:xstore/view/widget/auth/customTextFormField.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/validInput.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text("Reset Password",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: GetBuilder<ResetPasswordControllerImp>(
            builder: (controller) => HandlingRequest(
                  statusRequest: controller.statusRequest,
                  widget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: controller.formstate,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30),
                            child: Center(
                              child: Text(
                                "Enter a new Password ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ),
                          CustomTextFormField(
                              controller: controller.password,
                              validator: (val) {
                                return validInput(val!, "Password", 3, 30);
                              },
                              label: "Password",
                              hint: "New Password",
                              icon: Icons.lock_open),
                          CustomTextFormField(
                              controller: controller.repassword,
                              validator: (val) {
                                return validInput(val!, "Password", 3, 30);
                              },
                              label: "Password",
                              hint: "Confirm Password",
                              icon: Icons.lock_reset_outlined),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: CustomElevatedButton(
                                text: "Save",
                                onPressed: () {
                                  controller.goLogin();
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                )));
  }
}
