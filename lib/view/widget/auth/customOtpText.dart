// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/auth/verifyCodeResetPasswordController.dart';
import 'package:xstore/core/constant/color.dart';

// ignore: must_be_immutable
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
      enabledBorderColor: primryColor,

      decoration: const InputDecoration(
          counterStyle:
              TextStyle(color: Colors.white, decorationColor: Colors.white)),

      fillColor: Colors.white,
      margin: const EdgeInsets.all(7),
      focusedBorderColor: primryColor,
      textStyle: const TextStyle(color: Colors.white),
      numberOfFields: 5,
      showFieldAsBox: true,
      onCodeChanged: (String code) {},
      onSubmit: (String verificationCode) {
        onSubmit;
      }, // end onSubmit
    );
  }
}
