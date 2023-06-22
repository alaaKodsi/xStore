import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/loginContorller.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/functions/exitApp.dart';
import 'package:xstore/core/functions/validInput.dart';
import 'package:xstore/view/widget/auth/CustomeColorContainar.dart';
import 'package:xstore/view/widget/auth/customElevatedButton.dart';
import 'package:xstore/view/widget/auth/customMoveToSignUporLogin.dart';
import 'package:xstore/view/widget/auth/customTextFormField.dart';
import 'package:xstore/view/widget/auth/customTitle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());

    return Scaffold(
      backgroundColor: backgroundColor,
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<LoginControllerImp>(
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
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        2.5,
                                    child: Column(
                                      children: [
                                        const CustomTitle(),
                                        Text(
                                          "Welcome Back ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomTextFormField(
                                    controller: controller.email,
                                    validator: (val) {
                                      return validInput(val!, "email", 7, 30);
                                    },
                                    hint: "Enter your Email",
                                    keyboardType: TextInputType.emailAddress,
                                    label: "Email",
                                    icon: Icons.email_outlined,
                                  ),
                                  CustomTextFormField(
                                    controller: controller.password,
                                    obscureText: controller.isShowPassword,
                                    onTap: () {
                                      controller.showPassword();
                                    },
                                    validator: (val) {
                                      return validInput(
                                          val!, "password", 7, 30);
                                    },
                                    hint: "Enter your Password",
                                    label: "Password",
                                    icon: controller.isShowPassword == true
                                        ? Icons.remove_red_eye_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        splashColor: backgroundColor,
                                        onTap: () {
                                          controller.goToForgerPassword();
                                        },
                                        child: Text(
                                          "Forget Password ?",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Colors.white),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CustomElevatedButton(
                                    onPressed: () {
                                      controller.login();
                                    },
                                    text: "Login ",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 15,
                            child: CoustomCheekAccount(
                              bodyText: " I don't have an account yet !   ",
                              inkweText: "SignUp",
                              onTap: () {
                                controller.goToSignUp();
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
