import 'package:flutter/material.dart';
import 'package:xstore/view/widget/home/CoustomCardForDiscount.dart';
import 'package:xstore/view/widget/home/coustomCategoies.dart';
import 'package:xstore/view/widget/home/searchField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SearchField(),
                CoustomCardForDiscount(),
                Row(
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
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomCategories(
                            imageName: "assets/images/computer.svg"),
                        CustomCategories(
                            imageName: "assets/images/headset.svg"),
                        CustomCategories(
                            imageName: "assets/images/keyboard.svg"),
                        CustomCategories(imageName: "assets/images/mouse.svg"),
                        CustomCategories(imageName: "assets/images/tablet.svg"),
                        CustomCategories(imageName: "assets/images/mobile.svg"),
                        CustomCategories(
                            imageName: "assets/images/compact-disc .svg"),
                      ],
                    ),
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
