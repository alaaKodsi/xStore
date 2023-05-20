// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/functions/exitApp.dart';
import 'package:xstore/core/functions/validInput.dart';
import '../../../controller/auth/signUpController.dart';
import '../../widget/auth/customElevatedButton.dart';
import '../../widget/auth/customMoveToSignUporLogin.dart';
import '../../widget/auth/customTextFormField.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Sign Up",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: controller.formstat,
            child: ListView(
              children: [
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
                  validator: (val) {
                    return validInput(val!, "username", 9, 30);
                  },
                  hint: "Enter your Username",
                  label: "Username ",
                  icon: Icons.person_2_outlined,
                ),
                CustomTextFormField(
                  validator: (val) {
                    return validInput(val!, "email", 10, 30);
                  },
                  keyboardType: TextInputType.emailAddress,
                  hint: "Enter your Email",
                  label: "Email",
                  icon: Icons.email_outlined,
                ),
                CustomTextFormField(
                  validator: (val) {
                    return validInput(val!, "Phone", 9, 15);
                  },
                  keyboardType: TextInputType.phone,
                  hint: "Enter your Phone",
                  label: "Phone",
                  icon: Icons.phone_android_outlined,
                ),
                GetBuilder<SignUpControllerImp>(
                  builder: (controller) => CustomTextFormField(
                    obscureText: controller.isShowPassword,
                    onTap: controller.showPassword(),
                    hint: "Enter your Password",
                    validator: (val) {
                      return validInput(val!, "Password", 10, 25);
                    },
                    label: "Password",
                    icon: Icons.lock_outline,
                  ),
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
                  height: 20,
                ),
                Center(
                  child: CoustomCheekAccount(
                    bodyText: " I have an account already !  ",
                    inkweText: "Login",
                    onTap: () {
                      controller.goToLogin();
                      ;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
