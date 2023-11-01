import 'package:flutter/material.dart';

class InfoPriceCart extends StatelessWidget {
  final String price;
  final String shopping;
  final String total;

  const InfoPriceCart(
      {super.key,
      required this.price,
      required this.shopping,
      required this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 25, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Text(
                "Sub total",
                style: TextStyle(color: Colors.white70, fontSize: 17),
              ),
              Text(
                "Shopping",
                style: TextStyle(color: Colors.white70, fontSize: 17),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Total",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "\$$price",
                style: const TextStyle(color: Colors.white70, fontSize: 17),
              ),
              Text(
                "\$$shopping",
                style: const TextStyle(color: Colors.white70, fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "\$$total",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
