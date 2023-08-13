// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TitileBasic extends StatelessWidget {
  final String titleName;
  final String leadingTitle;
  final void Function()? seeAll;
  const TitileBasic({
    Key? key,
    required this.titleName,
    required this.leadingTitle,
    this.seeAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleName,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: seeAll,
              child: Text(
                leadingTitle,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[500],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
