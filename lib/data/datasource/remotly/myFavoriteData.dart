import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class MyFavoriteData {
  RequestsFromApi requestsFromApi;

  MyFavoriteData(this.requestsFromApi);

  getData(String id) async {
    var response =
        await requestsFromApi.postData(LinkApi.myFavorit, {"id": id});

    return response.fold((l) => l, (r) => r);
  }
}
