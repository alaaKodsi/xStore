import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/Items/items_Controller.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/data/model/categoriesModel.dart';

class ListCatergoriesItems extends GetView<ItemsControllerImp> {
  const ListCatergoriesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 75,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView.builder(
                itemCount: controller.categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Catergories(
                    index: i,
                    categoriesModel:
                        CategoriesModel.fromJson(controller.categories[i]),
                  );
                }),
          ),
        ),
      ],
    );
  }
}

class Catergories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int? index;
  const Catergories({super.key, required this.categoriesModel, this.index});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsControllerImp>(
      builder: (controller) => InkWell(
        splashColor: backgroundColor,
        onTap: () {
          // controller.goToItmeCategories(controller.categories, index!);
          controller.changeCat(
              index!, categoriesModel.categoriesId!.toString());
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: controller.selectedCat == index
                      ? primryColor
                      : Colors.white,
                ),
                color: backgroundColor,
              ),
              child: Text(
                "${categoriesModel.categoriesName}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
        ),
      ),
    );
  }
}
