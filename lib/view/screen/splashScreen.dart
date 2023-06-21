import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/constant/imageApp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed("onboarding");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SizedBox(
            height: 250, width: 250, child: Image.asset(ImageApp.logo)),
      ),
    );
  }
}
