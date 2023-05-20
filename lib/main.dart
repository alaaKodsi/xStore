import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/routes.dart';
import 'core/constant/color.dart';
import 'core/localization/changeLocal.dart';
import 'core/localization/transliation.dart';
import 'core/services/local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intialService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primryColor),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: route,
      locale: controller.language,
      translations: MyTranslation(),
    );
  }
}
