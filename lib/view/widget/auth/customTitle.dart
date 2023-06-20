import 'package:flutter/material.dart';

import '../../../core/constant/imageApp.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImageApp.logo,
          height: 200,
        ),
      ],
    );
  }
}
