// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:xstore/core/constant/color.dart';

// ignore: must_be_immutable
class CustomContainarColor extends StatelessWidget {
  double? width;
  double? height;
  double? left;
  double? right;
  double? top;
  double? bottom;

  CustomContainarColor({
    Key? key,
    this.width,
    this.height,
    this.right,
    this.left,
    this.top,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      bottom: bottom,
      top: top,
      right: right,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: primryColor,
          borderRadius: BorderRadius.circular(150),
        ),
      ),
    );
  }
}
