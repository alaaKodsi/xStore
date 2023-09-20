import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/Items/items_Controller.dart';
import 'package:xstore/controller/favorite_controller.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/constant/linksApi.dart';
import 'package:xstore/data/model/itemsModel.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItmesModel itmesModel;
  const CustomListItems({
    Key? key,
    required this.itmesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
          onTap: () {
            controller.goToProductDetails(itmesModel);
          },
          child: Card(
            color: secondColors,
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: colorContainer,
                          borderRadius: BorderRadius.circular(10)),
                      height: 170,
                      width: 150,
                      child: Hero(
                        tag: itmesModel.itemsId!,
                        child: CachedNetworkImage(
                          imageUrl:
                              "${LinkApi.imageItems}/${itmesModel.itemsImage!}",
                          height: 70,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(itmesModel.itemsName!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text("${itmesModel.itemsPrice} \$",
                                style: const TextStyle(
                                  color: primryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                            const Spacer(),
                            GetBuilder<Favorite_controller>(
                              builder: (controller) => IconButton(
                                  onPressed: () {
                                    if (controller.isFavorite[
                                            itmesModel.itemsId.toString()] ==
                                        "1") {
                                      controller.setFavorite(
                                          itmesModel.itemsId.toString(), "0");
                                      controller.removeData(
                                          itmesModel.itemsId.toString());
                                    } else {
                                      controller.setFavorite(
                                          itmesModel.itemsId.toString(), "1");
                                      controller.addData(
                                          itmesModel.itemsId.toString());
                                    }
                                  },
                                  icon: Icon(
                                    size: 23,
                                    controller.isFavorite[itmesModel.itemsId
                                                .toString()] ==
                                            "1"
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color:
                                        const Color.fromARGB(255, 235, 107, 98),
                                  )),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          )),
    );
  }
}
