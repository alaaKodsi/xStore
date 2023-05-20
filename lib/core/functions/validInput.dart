// ignore: file_names
import 'package:get/get.dart';

validInput(String val, String type, int min, int max) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Invalid Username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Invalid Email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Invalid Phone ";
    }
  }

  if (val.length > max) return "can't be larger then $max";
  if (val.length < min) return "can't be less then $min";

  if (val.isEmpty) {
    return "can't be Empty";
  }
}
