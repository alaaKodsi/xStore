// ignore: file_names
class ItmesModel {
  String? itemsId;
  String? itemsName;
  String? itemsDesc;
  String? itemsImage;
  String? itemsCount;
  int? itemsActive;
  String? itemsPrice;
  int? itemsDiscoiunt;
  String? itemsDateTime;
  int? itemsCat;
  int? categoriesId;
  String? categoriesName;
  String? categoriesImage;
  String? categoriesDateTime;
  String? favorite;

  ItmesModel(
      {this.itemsId,
      this.itemsName,
      this.itemsDesc,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.itemsPrice,
      this.itemsDiscoiunt,
      this.itemsDateTime,
      this.itemsCat,
      this.categoriesId,
      this.categoriesName,
      this.categoriesImage,
      this.categoriesDateTime,
      this.favorite});

  ItmesModel.fromJson(Map<String, dynamic> json) {
    itemsId = json['items_id'].toString();
    itemsName = json['items_name'];
    itemsDesc = json['items_Desc'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscoiunt = json['items_discoiunt'];
    itemsDateTime = json['items_dateTime'];
    itemsCat = json['items_cat'];
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesImage = json['categories_Image'];
    categoriesDateTime = json['categories_dateTime'];
    favorite = json['favorite'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_Image'] = categoriesImage;
    data['categories_dateTime'] = categoriesDateTime;
    data['favorite'] = favorite;

    return data;
  }
}
