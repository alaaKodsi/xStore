import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/home_Controller.dart';
import 'package:xstore/core/constant/linksApi.dart';
import 'package:xstore/data/model/categoriesModel.dart';
import 'package:xstore/view/widget/home/coustomCategoies.dart';

class ListOfCategories extends GetView<HomeControllerImp> {
  const ListOfCategories({Key? key}) : super(key: key);

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
          height: 150,
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

class Catergories extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? index;

  const Catergories({super.key, required this.categoriesModel, this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItmeCategories(controller.categories, index!,
            categoriesModel.categoriesId!.toString());
      },
      child: CustomCategories(
          imageName:
              "${LinkApi.imageCategories}/${categoriesModel.categoriesImage}",
          catName: "${categoriesModel.categoriesName}"),
    );
  }
}
