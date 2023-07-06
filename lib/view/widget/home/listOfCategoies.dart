import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/home_Controller.dart';
import 'package:xstore/core/constant/linksApi.dart';
import 'package:xstore/view/widget/home/coustomCategoies.dart';

class ListOfCategories extends GetView<HomeControllerImp> {
  const ListOfCategories({super.key});

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
          height: 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
                itemCount: controller.categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return CustomCategories(
                      imageName:
                          "${LinkApi.imageCategories}/${controller.categories[i]["categories_Image"]}",
                      catName:
                          "${controller.categories[i]["categories_name"]}");
                }),
          ),
        ),
      ],
    );
  }
}
