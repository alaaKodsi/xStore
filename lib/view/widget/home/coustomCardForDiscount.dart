import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';

class CoustomCardForDiscount extends StatelessWidget {
  const CoustomCardForDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Offers",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Stack(
            children: [
              Image.asset(
                "assets/images/forDiscount.png",
                fit: BoxFit.cover,
              ),
              const Positioned(
                  left: 100,
                  top: 75,
                  child: Text(
                    "SUMMER SALE",
                    style: TextStyle(
                        // fontFamily: "SparkyStonesRegular",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )),
              Positioned(
                  left: 20,
                  bottom: 0,
                  child: Image.asset(
                    "assets/images/newOffer.png",
                    height: 150,
                    width: 150,
                  )),
              Positioned(
                  right: 75,
                  bottom: 75,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Shop Now",
                      style: TextStyle(
                          color: primryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
