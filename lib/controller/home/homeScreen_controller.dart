import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/view/screen/SettingPage.dart';
import 'package:xstore/view/screen/cartPage.dart';
import 'package:xstore/view/screen/home/homePage.dart';
import 'package:xstore/view/screen/myFavorite.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Noti"))],
    ),
    const CartPage(),
    const MyFavorite(),
    const SettingPage(),
  ];

  @override
  // ignore: avoid_renaming_method_parameters
  changePage(int i) {
    currentpage = i;
    update();
  }
}
