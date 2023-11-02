import 'package:xstore/core/class/requests.dart';
import 'package:xstore/core/constant/linksApi.dart';

class CartData {
  RequestsFromApi requestsFromApi;

  CartData(this.requestsFromApi);

  add(String userId, String itemsId) async {
    var response = await requestsFromApi
        .postData(LinkApi.addToCart, {"usersid": userId, "itemsid": itemsId});

    return response.fold((l) => l, (r) => r);
  }

  remove(String userId, String itemsId) async {
    var response = await requestsFromApi.postData(
        LinkApi.removeFromCart, {"usersid": userId, "itemsid": itemsId});

    return response.fold((l) => l, (r) => r);
  }

  removeAllItems(String userId, String itemsId) async {
    var response = await requestsFromApi.postData(
        LinkApi.removeAllItemFromCart, {"usersid": userId, "itemsid": itemsId});

    return response.fold((l) => l, (r) => r);
  }

  getCountItems(String userId, String itemsId) async {
    var response = await requestsFromApi.postData(
        LinkApi.getCountItems, {"usersid": userId, "itemsid": itemsId});

    return response.fold((l) => l, (r) => r);
  }
}
