import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/view/widget/customAppbar.dart';
import 'package:xstore/view/widget/home/CoustomCardForDiscount.dart';
import 'package:xstore/view/widget/home/searchField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomAppBar(
        title: 'Home',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            SearchField(),
            CoustomCardForDiscount(),
          ],
        ),
      ),
    );
  }
}
