import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/forDiscount.png"),
                  fit: BoxFit.fill),
              color: white,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(35),
              ),
            ),
            width: Get.width,
            height: 200,
            child: Stack(
              children: [
                Positioned(
                    bottom: -20,
                    right: -15,
                    child: Container(
                      alignment: Alignment.center,
                      height: 125,
                      width: 125,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Text(
                        "70%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 40),
                      ),
                    )),
                const Positioned(
                    left: 100,
                    top: 40,
                    child: Column(
                      children: [
                        Text(
                          "SUMMER SALE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "oper Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
