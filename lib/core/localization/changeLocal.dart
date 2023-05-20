import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/core/services/local.dart';

class LocalController extends GetxController {
  Locale? language;

  Myservices myservices = Get.find();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myservices.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myservices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
