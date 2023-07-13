import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/home_Controller.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/view/widget/home/CoustomCardForDiscount.dart';
import 'package:xstore/view/widget/home/listOfCategoies.dart';
import 'package:xstore/view/widget/home/listOfItem.dart';
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
          widget: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SearchField(),
                      const CoustomCardForDiscount(),
                      const ListOfCategories(),
                      TitileBasic(
                        titleName: "For you",
                        seeAll: () {},
                      ),
                      const ListOfItem(),
                    ],
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
