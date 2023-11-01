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
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InfoPriceCart(
              price: "300",
              shopping: "50",
              total: "350",
            ),
            CoustomElevatedButton(),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            CoustomCartCard(
                title: "Galaxy A20 Por Max Lite 5G",
                subtitle: "mobile",
                price: "299.99",
                count: "1"),
          ],
        ),
      ),
    );
  }
}
