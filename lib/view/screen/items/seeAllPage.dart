import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/Items/seeAll_Controller.dart';
import 'package:xstore/controller/favorite_controller.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/data/model/itemsModel.dart';
import 'package:xstore/view/widget/customAppbar.dart';
import 'package:xstore/view/widget/home/items/customListOfItems.dart';
import 'package:xstore/view/widget/home/searchField.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SeeAllitemsControllerImp());
    Favorite_controller controllerFavor = Get.put(Favorite_controller());
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomAppBar(title: "X Store"),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchField(),
              GetBuilder<SeeAllitemsControllerImp>(builder: ((controller) {
                return HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      itemCount: controller.data.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.6),
                      itemBuilder: (context, i) {
                        controllerFavor.isFavorite[
                                controller.data[i]["items_id"].toString()] =
                            controller.data[i]["favorite"].toString();
                        return CustomListItems(
                          itmesModel: ItmesModel.fromJson(controller.data[i]),
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
