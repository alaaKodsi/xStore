import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/myFavorite_controller.dart';
import 'package:xstore/core/class/handlingData.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/view/widget/home/items/coustomMyfavorite.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    MyFavoritControllerImp controller = Get.put(MyFavoritControllerImp());
    return Scaffold(
      backgroundColor: backgroundColor,
      body: RefreshIndicator(
        color: primryColor,
        onRefresh: () async {
          controller.refreshData();
        },
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                GetBuilder<MyFavoritControllerImp>(builder: ((
                  controller,
                ) {
                  return GetBuilder<MyFavoritControllerImp>(
                    dispose: (state) => MyFavoritControllerImp(),
                    builder: (controller) => HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                          itemCount: controller.data.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.6),
                          itemBuilder: (context, i) {
                            return CustomListMyFavorite(
                                itmesModel: controller.data[i]);
                          }),
                    ),
                  );
                }))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
