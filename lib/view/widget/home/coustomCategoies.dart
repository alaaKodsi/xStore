// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCategories extends StatelessWidget {
  final String imageName;
  const CustomCategories({
    Key? key,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
              height: 75, width: 75, child: SvgPicture.asset(imageName)),
        ),
      ],
    );
  }
}
