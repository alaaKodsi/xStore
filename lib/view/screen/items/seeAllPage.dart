import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/home/home_Controller.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/data/model/itemsModel.dart';
import 'package:xstore/view/widget/customAppbar.dart';
import 'package:xstore/view/widget/home/items/customListOfItems.dart';
import 'package:xstore/view/widget/home/searchField.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomAppBar(title: "X Store"),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchField(),
              GetBuilder<HomeControllerImp>(builder: ((controller) {
                return HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      itemCount: controller.allItems.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              // childAspectRatio: 0.5,
                              childAspectRatio: 0.6),
                      itemBuilder: (context, i) {
                        return CustomListItems(
                          itmesModel:
                              ItmesModel.fromJson(controller.allItems[i]),
                        );
                      }),
                );
              })),
            ],
          ),
        ),
      ),
    );
  }
}
