// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/verifyCodeResetPasswordController.dart';
import 'package:xstore/core/constant/color.dart';

class CustomOtpText extends StatelessWidget {
  void Function(String)? onSubmit;
  CustomOtpText({
    Key? key,
    this.onSubmit,
  }) : super(key: key);

  VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      enabled: true,
      autoFocus: true,
      fieldWidth: 50.0,
      borderRadius: BorderRadius.circular(20),
      numberOfFields: 5,
      showCursor: false,
      textStyle: const TextStyle(color: Colors.white),
      focusedBorderColor: primryColor,
      enabledBorderColor: Colors.white,
      fillColor: Colors.white,
      showFieldAsBox: true,
      onCodeChanged: (String code) {},
      onSubmit: onSubmit, // end onSubmit
    );
  }
}
