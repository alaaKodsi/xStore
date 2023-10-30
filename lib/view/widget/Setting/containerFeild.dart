// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:xstore/core/constant/color.dart';
import 'package:xstore/data/model/feildInSettingPage.dart';

class ContainerFeild extends StatelessWidget {
  final String titleFeild;
  final List<FeildItem> items;

  const ContainerFeild({
    Key? key,
    required this.titleFeild,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "  $titleFeild",
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: secondColors,
            ),
            child: Column(
              children: items.map((item) {
                return ListTile(
                  onTap: item.onTap,
                  leading: SvgPicture.asset(
                    item.icon,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  title: Text(
                    item.title,
                    style: const TextStyle(color: Colors.white60),
                  ),
                  trailing: item.widget,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
