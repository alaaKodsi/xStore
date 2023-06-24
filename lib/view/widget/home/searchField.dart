import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: white,
      style: const TextStyle(color: white),
      decoration: InputDecoration(
        fillColor: Colors.grey[700],
        filled: true,
        suffixIcon: const Icon(Icons.search_outlined),
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
    );
  }
}
