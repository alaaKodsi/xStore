import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/home/homeScreen_controller.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/view/widget/customAppbar.dart';
import 'package:xstore/view/widget/home/customButtonAppbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      return Scaffold(
          backgroundColor: backgroundColor,
          appBar: const CustomAppBar(title: "X Store"),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: BottomAppBar(
              color: Colors.black,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonAppbar(
                    icon: Icons.home_outlined,
                    activ: controller.currentpage == 0 ? true : false,
                    onPressed: () {
                      controller.changePage(0);
                    },
                  ),
                  CustomButtonAppbar(
                    icon: Icons.notifications_outlined,
                    activ: controller.currentpage == 1 ? true : false,
                    onPressed: () {
                      controller.changePage(1);
                    },
                  ),
                  CustomButtonAppbar(
                    icon: Icons.shopping_basket_outlined,
                    activ: controller.currentpage == 2 ? true : false,
                    onPressed: () {
                      controller.changePage(2);
                    },
                  ),
                  CustomButtonAppbar(
                    icon: Icons.settings_outlined,
                    activ: controller.currentpage == 3 ? true : false,
                    onPressed: () {
                      controller.changePage(3);
                    },
                  ),
                ],
              ),
            ),
          ),
          body: controller.listPage.elementAt(controller.currentpage));
    });
  }
}
