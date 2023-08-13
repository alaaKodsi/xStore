import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/Items/items_Controller.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/data/model/itemsModel.dart';
import 'package:xstore/view/widget/customAppbar.dart';
import 'package:xstore/view/widget/home/items/customListOfItems.dart';
import 'package:xstore/view/widget/home/listCategoriesItems.dart';
import 'package:xstore/view/widget/home/searchField.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomAppBar(title: "X Store"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SearchField(),
            const ListCatergoriesItems(),
            GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: GridView.builder(
                    itemCount: controller.data.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.57,
                    ),
                    itemBuilder: (context, i) {
                      return CustomListItems(
                        itmesModel: ItmesModel.fromJson(controller.data[i]),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
