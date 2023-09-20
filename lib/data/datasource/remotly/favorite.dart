import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class FavoriteData {
  RequestsFromApi requestsFromApi;

  FavoriteData(this.requestsFromApi);

  add(String userId, String itemsId) async {
    var response = await requestsFromApi
        .postData(LinkApi.add, {"users_id": userId, "items_id": itemsId});

    return response.fold((l) => l, (r) => r);
  }

  remove(String userId, String itemsId) async {
    var response = await requestsFromApi
        .postData(LinkApi.remove, {"users_id": userId, "items_id": itemsId});

    return response.fold((l) => l, (r) => r);
  }
}
