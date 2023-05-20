// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  String label;
  String hint;
  IconData icon;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  bool? obscureText;
  void Function()? onTap;

  CustomTextFormField({
    Key? key,
    required this.label,
    required this.hint,
    required this.icon,
    this.keyboardType,
    this.validator,
    this.obscureText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
          validator: validator,
          keyboardType: keyboardType,
          obscureText:
              obscureText == null || obscureText == false ? false : true,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: onTap,
              child: Icon(icon),
            ),
            suffixIconColor: Colors.white,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.all(16),
            hintText: hint,
            labelStyle: const TextStyle(color: Colors.white),
            hintStyle: const TextStyle(color: Colors.white),
            label: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(label)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          )),
    );
  }
}
