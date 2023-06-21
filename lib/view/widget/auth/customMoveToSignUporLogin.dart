// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoustomCheekAccount extends StatelessWidget {
  String bodyText;
  String inkweText;
  void Function()? onTap;
  CoustomCheekAccount({
    Key? key,
    required this.bodyText,
    required this.inkweText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          bodyText,
          style: const TextStyle(fontSize: 16, color: Colors.black54),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            inkweText,
            style: const TextStyle(color: Colors.white, fontSize: 19),
          ),
        )
      ],
    );
  }
}
