import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/Onboarding_Controller.dart';
import 'package:xstore/core/constant/color.dart';

class CustomButton extends GetView<OnboardingControllerImp> {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        onPressed: () {
          controller.next();
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(primryColor),
            fixedSize: MaterialStateProperty.all(const Size(250, 50))),
        child: const Text(
          "Continus",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
