import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';

class CoustomElevatedButton extends StatelessWidget {
  const CoustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primryColor),
          fixedSize:
              MaterialStateProperty.all(const Size(double.maxFinite, 55))),
      child: Text(
        "CHECKOUT",
        style: const TextStyle(color: Colors.white, fontSize: 19),
      ),
    );
  }
}
