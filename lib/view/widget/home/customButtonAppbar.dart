// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:xstore/core/class/triangleClipper.dart';
import 'package:xstore/core/constant/color.dart';

class CustomButtonAppbar extends StatelessWidget {
  final void Function()? onPressed;
  final String icon;
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
                  top: -20,
                  right: -1,
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
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: InkWell(
                    splashColor: backgroundColor,
                    onTap: onPressed,
                    child: SvgPicture.asset(
                      height: 25,
                      width: 30,
                      icon,
                      color: white,
                    ),
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
