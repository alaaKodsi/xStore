import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class VerifyCodeSignUp {
  RequestsFromApi requestsFromApi;

  VerifyCodeSignUp(this.requestsFromApi);

  postData(String email, String verifyCode) async {
    var response = await requestsFromApi.postData(LinkApi.verifyCode, {
      "email": email,
      "verifiycode": verifyCode,
    });

    return response.fold((l) => l, (r) => r);
  }
}
