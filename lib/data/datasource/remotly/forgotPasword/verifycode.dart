import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class VerfiyCodeForgotpasswordData {
  RequestsFromApi requestsFromApi;

  VerfiyCodeForgotpasswordData(this.requestsFromApi);

  postData(String email, String verifiycode) async {
    var response =
        await requestsFromApi.postData(LinkApi.verifyCodeToRessePass, {
      "email": email,
      "verifiycode": verifiycode,
    });

    return response.fold((l) => l, (r) => r);
  }
}
