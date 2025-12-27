import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_model.g.dart';
part 'categories_model.freezed.dart';
@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    required int id,
    required String name,
    required String image,
    required int order,
  }) = _CategoriesModel;
  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
