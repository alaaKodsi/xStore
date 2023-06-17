import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<Myservices> inti() async {
    await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

intialService() async {
  await Get.putAsync(() => Myservices().inti());
}
