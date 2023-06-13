import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/constant/imageApp.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(
          child: Lottie.asset(ImageApp.loading, width: 250, height: 250)),
    );
  }
}
