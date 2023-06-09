import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/Onboarding_Controller.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/data/datasource/static/staticOnboarding.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onboardingList.length,
              (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 700),
                    margin: const EdgeInsets.only(right: 5),
                    height: 6,
                    width: controller.currentPage == index ? 20 : 5,
                    decoration: BoxDecoration(
                        color: primryColor,
                        borderRadius: BorderRadius.circular(10)),
                  ))
        ],
      ),
    );
  }
}
