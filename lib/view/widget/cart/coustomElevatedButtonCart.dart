import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';

class CoustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  const CoustomElevatedButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primryColor),
          fixedSize:
              MaterialStateProperty.all(const Size(double.maxFinite, 55))),
      child: const Text(
        "CHECKOUT",
        style: TextStyle(color: Colors.white, fontSize: 19),
      ),
    );
  }
}
