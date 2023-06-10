import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class Signupdata {
  RequestsFromApi requestsFromApi;

  Signupdata(this.requestsFromApi);

  postData(String username, String email, String phone, String password) async {
    var response = await requestsFromApi.postData(LinkApi.signup, {
      "username": username,
      "email": email,
      "phone": phone,
      "passwword": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
