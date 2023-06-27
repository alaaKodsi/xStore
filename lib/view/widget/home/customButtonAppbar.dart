// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:xstore/core/class/triangleClipper.dart';

class CustomButtonAppbar extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  final bool? activ;

  const CustomButtonAppbar({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.activ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                  top: -40,
                  right: 0,
                  left: 0.0,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipPath(
                      clipper: TriangleClipper(),
                      child: Container(
                        color: activ == true
                            ? const Color.fromARGB(73, 255, 255, 255)
                            : const Color.fromARGB(0, 255, 255, 255),
                      ),
                    ),
                  )),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: activ == true ? Colors.white : Colors.black,
                      width: 3,
                    ),
                  ),
                ),
                child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    size: 27,
                    icon,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
