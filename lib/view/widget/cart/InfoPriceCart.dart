import 'package:flutter/material.dart';

class InfoPriceCart extends StatelessWidget {
  const InfoPriceCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 25, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                padding: const EdgeInsets.symmetric(vertical: 10),
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
                "\$300",
                style: TextStyle(color: Colors.white70, fontSize: 17),
              ),
              Text(
                "\$50",
                style: TextStyle(color: Colors.white70, fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "\$350",
                  style: TextStyle(
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
