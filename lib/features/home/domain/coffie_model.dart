import 'package:cafe_app/features/home/domain/coffie_nutrition_model.dart';
import 'package:cafe_app/features/home/domain/coffie_rating_model.dart';
import 'package:cafe_app/features/home/domain/coffie_size_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'coffie_model.g.dart';
part 'coffie_model.freezed.dart';

@freezed
class CoffieModel with _$CoffieModel {
  const factory CoffieModel({
    required int id,
    required int categoryId,
    required String name,
    required String shortDescription,
    required String description,
    required List<CoffieSizeModel> sizes,
    required String defaultSize,
    required String image,
    required List<double> extrasAllowed,
    required bool isAvailable,
    required bool isPopular,
    required List<String> tags,
    required CoffieRatingModel rating,
    required CoffieNutritionModel nutrition,
  }) = _CoffieModel;
  factory CoffieModel.fromJson(Map<String, dynamic> json) =>
      _$CoffieModelFromJson(json);
}
