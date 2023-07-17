import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class ItmesData {
  RequestsFromApi requestsFromApi;

  ItmesData(this.requestsFromApi);

  getData(String id) async {
    var response =
        await requestsFromApi.postData(LinkApi.itmes, {"id": id.toString()});

    return response.fold((l) => l, (r) => r);
  }
}
