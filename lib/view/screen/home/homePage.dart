import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/home_Controller.dart';
import 'package:xstore/core/class/StatusRequest.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/linksApi.dart';
import 'package:xstore/view/widget/home/CoustomCardForDiscount.dart';
import 'package:xstore/view/widget/home/coustomCategoies.dart';
import 'package:xstore/view/widget/home/listOfCategoies.dart';
import 'package:xstore/view/widget/home/searchField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    StatusRequest statusRequest = StatusRequest.none;
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(builder: (controller) {
      return HandlingDataView(
          statusRequest: statusRequest,
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
                    ],
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
