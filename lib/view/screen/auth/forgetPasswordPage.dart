import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/checkEmail.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/imageApp.dart';
import 'package:xstore/core/functions/validInput.dart';
import 'package:xstore/view/widget/auth/customElevatedButton.dart';
import 'package:xstore/view/widget/auth/customTextFormField.dart';
import '../../../core/constant/color.dart';

class FotgetPasswordPage extends StatelessWidget {
  const FotgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CheckEmailControllerImp());
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text("Forgot Password",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: GetBuilder<CheckEmailControllerImp>(
            builder: (controller) => HandlingRequest(
                  statusRequest: controller.statusRequest,
                  widget: Form(
                    key: controller.formstat,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Image.asset(ImageApp.forgotPassword),
                            CustomTextFormField(
                                controller: controller.email,
                                keyboardType: TextInputType.emailAddress,
                                validator: (val) {
                                  return validInput(val!, "email", 7, 30);
                                },
                                label: "Email",
                                hint: "Enter your email ",
                                icon: Icons.email_outlined),
                            const SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomElevatedButton(
                                text: "Next",
                                onPressed: () {
                                  controller.goToVerifyCode();
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )));
  }
}
