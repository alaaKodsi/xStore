import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/constant/imageApp.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        cursorColor: white,
        // mouseCursor: MouseCursor.defer,
        style: const TextStyle(color: white),
        decoration: InputDecoration(
          hintText: "   Search",
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          fillColor: Colors.grey[700],
          filled: true,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              ImageApp.search,
              // ignore: deprecated_member_use
              color: white,
            ),
          ),
          suffixIconColor: white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: backgroundColor)),
          labelStyle: const TextStyle(color: backgroundColor),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: backgroundColor),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: backgroundColor),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
