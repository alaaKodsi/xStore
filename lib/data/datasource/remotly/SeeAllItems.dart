import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class SeeAllitems {
  RequestsFromApi requestsFromApi;

  SeeAllitems(this.requestsFromApi);

  getData(String userId) async {
    var response = await requestsFromApi
        .postData(LinkApi.seeAllItems, {"users_id": userId});

    return response.fold((l) => l, (r) => r);
  }
}
