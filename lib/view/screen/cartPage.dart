import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/view/widget/cart/CoustomElevatedButtonCart.dart';
import 'package:xstore/view/widget/cart/InfoPriceCart.dart';
import 'package:xstore/view/widget/cart/customCartCard.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InfoPriceCart(),
            CoustomElevatedButton(),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            CoustomCartCard(),
          ],
        ),
      ),
    );
  }
}
