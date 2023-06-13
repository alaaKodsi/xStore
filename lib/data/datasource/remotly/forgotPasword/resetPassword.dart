import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class ResetPasswordData {
  RequestsFromApi requestsFromApi;

  ResetPasswordData(this.requestsFromApi);

  postData(String email, String password) async {
    var response = await requestsFromApi.postData(LinkApi.resetPassword, {
      "email": email,
      "password": password,
    });

    return response.fold((l) => l, (r) => r);
  }
}
