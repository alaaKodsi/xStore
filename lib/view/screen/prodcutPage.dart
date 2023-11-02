import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/productDetails_Controller.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/constant/linksApi.dart';
import 'package:xstore/view/widget/customAppbar.dart';
import 'package:xstore/view/widget/home/titileBasic.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetails_controllerImp controller =
        Get.put(ProductDetails_controllerImp());
    return Scaffold(
      backgroundColor: secondColors,
      appBar: const CustomAppBar(
        title: "X Store",
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: backgroundColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(120))),
                height: Get.height / 2.5,
                width: Get.width,
              ),
              Positioned(
                right: 50,
                left: 50,
                top: 50,
                child: Hero(
                  tag: controller.itemsModel.itemsId!,
                  child: CachedNetworkImage(
                    imageUrl:
                        "${LinkApi.imageItems}/${controller.itemsModel.itemsImage!}",
                    height: 190,
                  ),
                ),
              ),
              Positioned(
                  bottom: 30,
                  right: 10,
                  child: Text(
                    "${controller.itemsModel.itemsName}",
                    style: const TextStyle(color: white, fontSize: 22),
                  ))
            ],
          ),
          SizedBox(
            height: Get.height / 2,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
                  child: TitileBasic(
                    leadingTitle: "",
                    titleName: "Description",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text(
                    "${controller.itemsModel.itemsDesc!}${controller.itemsModel.itemsDesc!}${controller.itemsModel.itemsDesc!}${controller.itemsModel.itemsDesc!}",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 30,
                    bottom: 10,
                  ),
                  child: Text(
                    "\$${controller.itemsModel.itemsPrice}",
                    style: const TextStyle(
                        color: primryColor,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: TitileBasic(
                    leadingTitle: "",
                    titleName: "Colors",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
