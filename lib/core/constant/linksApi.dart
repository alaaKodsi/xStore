// ignore: file_names
class LinkApi {
  static const String root = "http://192.168.1.102/xstore";

  //image

  static const String imageCategories = "$root/images/categories";
  static const String imageItems = "$root/images/items";

  //Auth

  static const String signup = "$root/auth/signup.Php";
  static const String verifyCode = "$root/auth/verifiycode.Php";
  static const String resend = "$root/auth/resend.php";
  static const String login = "$root/auth/login.Php";

  //fogot password and reset password

  static const String verifyCodeToRessePass =
      "$root/forgotpassword/verifyCode.Php";
  static const String resetPassword = "$root/forgotpassword/resetPassword.Php";
  static const String checkEmail = "$root/forgotpassword/checkEmail.Php";

  // home

  static const String home = "$root/home.Php";
  static const String itmes = "$root/items/items.Php";
  static const String seeAllItems = "$root/items/SeeAllItems.php";

  //favorite

  static const String add = "$root/Favorite/add.Php";
  static const String remove = "$root/Favorite/remove.Php";
  static const String myFavorit = "$root/Favorite/viewMyFavorite.php";
}
