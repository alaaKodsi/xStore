import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/signUpController.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/functions/exitApp.dart';
import 'package:xstore/core/functions/validInput.dart';
import 'package:xstore/view/widget/auth/CustomeColorContainar.dart';
import 'package:xstore/view/widget/auth/customElevatedButton.dart';
import 'package:xstore/view/widget/auth/customMoveToSignUporLogin.dart';
import 'package:xstore/view/widget/auth/customTextFormField.dart';
import 'package:xstore/view/widget/auth/customTitle.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: backgroundColor,
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(
              builder: (controller) => HandlingRequest(
                    statusRequest: controller.statusRequest,
                    widget: SingleChildScrollView(
                      child: Stack(
                        children: [
                          const CustomCointaiar(),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            padding: const EdgeInsets.all(20),
                            child: Form(
                              key: controller.formstat,
                              child: Column(
                                children: [
                                  const CustomTitle(),
                                  Text(
                                    "Register",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  CustomTextFormField(
                                    controller: controller.username,
                                    validator: (val) {
                                      return validInput(
                                          val!, "username", 9, 30);
                                    },
                                    hint: "Enter your Username",
                                    label: "Username ",
                                    icon: Icons.person_2_outlined,
                                  ),
                                  CustomTextFormField(
                                    controller: controller.email,
                                    validator: (val) {
                                      return validInput(val!, "email", 10, 30);
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    hint: "Enter your Email",
                                    label: "Email",
                                    icon: Icons.email_outlined,
                                  ),
                                  CustomTextFormField(
                                    controller: controller.phone,
                                    validator: (val) {
                                      return validInput(val!, "Phone", 9, 15);
                                    },
                                    keyboardType: TextInputType.phone,
                                    hint: "Enter your Phone",
                                    label: "Phone",
                                    icon: Icons.phone_android_outlined,
                                  ),
                                  CustomTextFormField(
                                    obscureText: controller.isShowPassword,
                                    onTap: () {
                                      controller.showPassword();
                                    },
                                    hint: "Enter your Password",
                                    controller: controller.password,
                                    validator: (val) {
                                      return validInput(
                                          val!, "Password", 10, 25);
                                    },
                                    label: "Password",
                                    icon: controller.isShowPassword == true
                                        ? Icons.remove_red_eye_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  CustomElevatedButton(
                                    onPressed: () {
                                      controller.signUp();
                                    },
                                    text: "Sign up ",
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 15,
                            child: CoustomCheekAccount(
                              bodyText: " I have an account already !  ",
                              inkweText: "Login",
                              onTap: () {
                                controller.goToLogin();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
    );
  }
}
