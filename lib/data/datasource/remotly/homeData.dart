import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class HomeData {
  RequestsFromApi requestsFromApi;

  HomeData(this.requestsFromApi);

  getData() async {
    var response = await requestsFromApi.postData(LinkApi.home, {});

    return response.fold((l) => l, (r) => r);
  }
}
