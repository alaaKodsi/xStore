import 'package:flutter/material.dart';
import 'package:xstore/view/screen/auth/loginPage.dart';
import 'package:xstore/view/screen/auth/signUpPage.dart';
import 'package:xstore/view/screen/onboardingPage.dart';
import 'view/screen/auth/checkEmail.dart';
import 'view/screen/auth/forgetPasswordPage.dart';
import 'view/screen/auth/resetPassword.dart';
import 'view/screen/auth/verfiyCode.dart';

Map<String, Widget Function(BuildContext)> route = {
  "Login": (context) => const LoginPage(),
  "/": (context) => const OnboardingPage(),
  "signUp": (context) => const SignUpPage(),
  "forgetPassword": (context) => const FotgetPasswordPage(),
  "VerfiyCode": (context) => const VerfiyCode(),
  "resetPassword": (context) => const ResetPassword(),
  "checkEmail": (context) => const CheckEmail(),
};
