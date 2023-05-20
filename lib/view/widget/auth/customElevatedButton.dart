// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  String text;
  void Function()? onPressed;
  CustomElevatedButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primryColor),
          fixedSize:
              MaterialStateProperty.all(const Size(double.maxFinite, 55))),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 19),
      ),
    );
  }
}
