import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/home_Controller.dart';
import 'package:xstore/core/constant/linksApi.dart';
import 'package:xstore/data/model/itemsModel.dart';
import 'package:xstore/view/widget/home/itemContian.dart';

class ListOfItem extends GetView<HomeControllerImp> {
  const ListOfItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: ListView.builder(
                itemCount: controller.items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Item(
                    itmesModel: ItmesModel.fromJson(controller.items[i]),
                  );
                }),
          ),
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final ItmesModel itmesModel;

  const Item({super.key, required this.itmesModel});

  @override
  Widget build(BuildContext context) {
    return ItemContainer(
      imageName: "${LinkApi.imageItems}/${itmesModel.itemsImage}",
      nameItem: "${itmesModel.itemsName}",
      price: "${itmesModel.itemsPrice.toString()}" " \$",
      onPressedIcon: () {},
    );
  }
}
