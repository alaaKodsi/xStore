import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/Onboarding_Controller.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/view/widget/Onboarding/customButton.dart';
import 'package:xstore/view/widget/Onboarding/customDot.dart';
import 'package:xstore/view/widget/Onboarding/customPageView.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());

    return const Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(flex: 4, child: CustomPageView()),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CustomDot(),
                      Spacer(),
                      CustomButton(),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
