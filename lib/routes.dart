import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:xstore/core/services/middelware.dart';
import 'package:xstore/view/screen/auth/signUpPage.dart';
import 'package:xstore/view/screen/auth/verfiyCodeSignUp.dart';
import 'package:xstore/view/screen/home/homePage.dart';
import 'package:xstore/view/screen/home/homeScreen.dart';
import 'package:xstore/view/screen/items/itemesPage.dart';
import 'package:xstore/view/screen/items/seeAllPage.dart';
import 'package:xstore/view/screen/onboardingPage.dart';
import 'package:xstore/view/screen/product/prodcutPage.dart';
import 'package:xstore/view/screen/splashScreen.dart';
import 'view/screen/auth/checkEmail.dart';
import 'view/screen/auth/forgetPasswordPage.dart';
import 'view/screen/auth/resetPassword.dart';
import 'view/screen/auth/verfiyCode.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const SplashScreen()),
  GetPage(
      name: "/onboarding",
      page: () => const OnboardingPage(),
      middlewares: [
        MyMiddelware(),
      ]),

  // Auth

  GetPage(
    name: "/Login",
    page: () => const HomeScreen(),
  ),
  GetPage(name: "/signUp", page: () => const SignUpPage()),
  GetPage(name: "/forgetPassword", page: () => const FotgetPasswordPage()),
  GetPage(name: "/verfiyCode", page: () => const VerfiyCode()),
  GetPage(name: "/VerfiyCodeSignUp", page: () => const VerfiyCodeSignUp()),
  GetPage(name: "/resetPassword", page: () => const ResetPassword()),
  GetPage(name: "/checkEmail", page: () => const CheckEmail()),

  /// home
  GetPage(name: "/home", page: () => const HomePage()),
  GetPage(name: "/homeRoot", page: () => const HomeScreen()),
  GetPage(name: "/itmeCat", page: () => const ItemsPage()),
  GetPage(name: "/seeAllItems", page: () => const SeeAllPage()),

  GetPage(name: "/productDetails", page: () => const ProductPage()),
];
