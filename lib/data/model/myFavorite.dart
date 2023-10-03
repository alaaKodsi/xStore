class MyFavoriteModel {
  int? favoriteId;
  int? favoriteUserid;
  int? favoriteItemsid;
  int? itemsId;
  String? itemsName;
  String? itemsDesc;
  String? itemsImage;
  String? itemsCount;
  int? itemsActive;
  String? itemsPrice;
  int? itemsDiscoiunt;
  String? itemsDateTime;
  int? itemsCat;
  int? usersId;

  MyFavoriteModel(e,
      {this.favoriteId,
      this.favoriteUserid,
      this.favoriteItemsid,
      this.itemsId,
      this.itemsName,
      this.itemsDesc,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.itemsPrice,
      this.itemsDiscoiunt,
      this.itemsDateTime,
      this.itemsCat,
      this.usersId});

  MyFavoriteModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json['favorite_id'];
    favoriteUserid = json['favorite_userid'];
    favoriteItemsid = json['favorite_itemsid'];
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsDesc = json['items_Desc'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscoiunt = json['items_discoiunt'];
    itemsDateTime = json['items_dateTime'];
    itemsCat = json['items_cat'];
    usersId = json['users_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['favorite_id'] = favoriteId;
    data['favorite_userid'] = favoriteUserid;
    data['favorite_itemsid'] = favoriteItemsid;
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_Desc'] = itemsDesc;
    data['items_image'] = itemsImage;
    data['items_count'] = itemsCount;
    data['items_active'] = itemsActive;
    data['items_price'] = itemsPrice;
    data['items_discoiunt'] = itemsDiscoiunt;
    data['items_dateTime'] = itemsDateTime;
    data['items_cat'] = itemsCat;
    data['users_id'] = usersId;
    return data;
  }
}
