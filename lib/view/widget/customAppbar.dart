import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  const CustomAppBar({super.key, required this.title, this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      leading: leading,
      title: Text(title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Colors.white,
              fontFamily: "SparkyStonesRegular",
              fontSize: 26)),
      backgroundColor: backgroundColor,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
