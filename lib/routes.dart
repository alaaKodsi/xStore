import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:xstore/core/services/middelware.dart';
import 'package:xstore/view/screen/auth/loginPage.dart';
import 'package:xstore/view/screen/auth/signUpPage.dart';
import 'package:xstore/view/screen/onboardingPage.dart';
import 'view/screen/auth/checkEmail.dart';
import 'view/screen/auth/forgetPasswordPage.dart';
import 'view/screen/auth/resetPassword.dart';
import 'view/screen/auth/verfiyCode.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const OnboardingPage(), middlewares: [
    MyMiddelware(),
  ]),
  GetPage(name: "/Login", page: () => const LoginPage()),
  GetPage(name: "/signUp", page: () => const SignUpPage()),
  GetPage(name: "/forgetPassword", page: () => const FotgetPasswordPage()),
  GetPage(name: "/verfiyCode", page: () => const VerfiyCode()),
  GetPage(name: "/resetPassword", page: () => const ResetPassword()),
  GetPage(name: "/checkEmail", page: () => const CheckEmail()),
];


// Map<String, Widget Function(BuildContext)> route = {
//   "Login": (context) => const LoginPage(),
//   "/": (context) => const OnboardingPage(),
//   "signUp": (context) => const SignUpPage(),
//   "forgetPassword": (context) => const FotgetPasswordPage(),
//   "verfiyCode": (context) => const VerfiyCode(),
//   "resetPassword": (context) => const ResetPassword(),
//   "checkEmail": (context) => const CheckEmail(),
// };
