import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/loginContorller.dart';
import 'package:xstore/core/functions/validInput.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/exitApp.dart';
import '../../widget/auth/customElevatedButton.dart';
import '../../widget/auth/customMoveToSignUporLogin.dart';
import '../../widget/auth/customTextFormField.dart';
import '../../widget/auth/customTitle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("Login",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white)),
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
                const CustomTitle(),
                Text(
                  "Welcome Back ",
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
                    return validInput(val!, "email", 7, 30);
                  },
                  hint: "Enter your Email",
                  label: "Email",
                  icon: Icons.email_outlined,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormField(
                    obscureText: controller.isShowPassword,
                    onTap: controller.showPassword(),
                    validator: (val) {
                      return validInput(val!, "password", 7, 30);
                    },
                    hint: "Enter your Password",
                    keyboardType: TextInputType.emailAddress,
                    label: "Password",
                    icon: Icons.lock_outline,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      controller.goToForgerPassword();
                    },
                    child: Text(
                      "Forget Password",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                  ),
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
                const SizedBox(
                  height: 100,
                ),
                CoustomCheekAccount(
                  bodyText: " I don't have an account yet ! ",
                  inkweText: "SignUp",
                  onTap: () {
                    controller.goToSignUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
