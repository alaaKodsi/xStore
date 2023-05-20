// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/Onboarding_Controller.dart';
import 'package:xstore/data/datasource/static/static.dart';

class CustomPageView extends GetView<OnboardingControllerImp> {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChange(val);
        },
        itemCount: onboardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Text(
                  onboardingList[i].title!,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      onboardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Image.asset(onboardingList[i].image!,
                    fit: BoxFit.cover, height: 300),
              ],
            ));
  }
}
