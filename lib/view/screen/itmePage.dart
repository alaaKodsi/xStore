import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/itme_Controller.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/view/widget/customAppbar.dart';
import 'package:xstore/view/widget/home/listCategoriesItems.dart';
import 'package:xstore/view/widget/home/searchField.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp contoller = Get.put(ItemsControllerImp());
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomAppBar(title: "X Store"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [SearchField(), ListCatergoriesItems()],
        ),
      ),
    );
  }
}
