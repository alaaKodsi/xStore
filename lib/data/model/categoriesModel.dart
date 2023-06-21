// ignore: file_names
class CategoriesModel {
  int? categoriesId;
  String? categoriesName;
  String? categoriesImage;
  String? categoriesDateTime;

  CategoriesModel(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesImage,
      this.categoriesDateTime});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesImage = json['categories_Image'];
    categoriesDateTime = json['categories_dateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_Image'] = categoriesImage;
    data['categories_dateTime'] = categoriesDateTime;
    return data;
  }
}
