import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class CheckEmailData {
  RequestsFromApi requestsFromApi;

  CheckEmailData(this.requestsFromApi);

  postData(String email) async {
    var response = await requestsFromApi.postData(LinkApi.checkEmail, {
      "email": email,
    });

    return response.fold((l) => l, (r) => r);
  }
}
