import 'package:freezed_annotation/freezed_annotation.dart';
part 'coffie_nutrition_model.g.dart';
part 'coffie_nutrition_model.freezed.dart';

@freezed
class CoffieNutritionModel with _$CoffieNutritionModel {
  const factory CoffieNutritionModel({
    required int kcal,
    required int sugar_g,
    required int caffeine_mg,
  }) = _CoffieNutritionModel;
  factory CoffieNutritionModel.fromJson(Map<String, dynamic> json) =>
      _$CoffieNutritionModelFromJson(json);
}
