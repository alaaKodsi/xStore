import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/home_Controller.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/view/widget/home/CoustomCardForDiscount.dart';
import 'package:xstore/view/widget/home/itemContian.dart';
import 'package:xstore/view/widget/home/listOfCategoies.dart';
import 'package:xstore/view/widget/home/searchField.dart';
import 'package:xstore/view/widget/home/titileBasic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(builder: (controller) {
      return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: const SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SearchField(),
                      CoustomCardForDiscount(),
                      ListOfCategories(),
                      TitileBasic(titleName: "For you"),
                      ItemContainer(),
                    ],
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
