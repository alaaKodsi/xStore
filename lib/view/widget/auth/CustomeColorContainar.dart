import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';

class CustomCointaiar extends StatelessWidget {
  const CustomCointaiar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: -75,
        bottom: -30,
        child: Container(
          height: 90,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: primryColor, borderRadius: BorderRadius.circular(150)),
        ));
  }
}
