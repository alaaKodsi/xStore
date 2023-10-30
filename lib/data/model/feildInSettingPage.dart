import 'package:flutter/material.dart';

class FeildItem {
  final String icon;
  final String title;
  final Widget? widget;
  final void Function()? onTap;

  FeildItem({
    required this.icon,
    required this.title,
    this.onTap,
    this.widget,
  });
}
