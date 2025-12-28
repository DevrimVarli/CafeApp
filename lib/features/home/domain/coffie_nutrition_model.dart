import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffie_nutrition_model.g.dart';
part 'coffie_nutrition_model.freezed.dart';

@freezed
class CoffieNutritionModel with _$CoffieNutritionModel {
  const factory CoffieNutritionModel({
    @Default(0) int kcal,
    @Default(0) @JsonKey(name: 'sugar_g') int sugar,
    @Default(0) @JsonKey(name: 'caffeine_mg') int caffeine,
  }) = _CoffieNutritionModel;

  factory CoffieNutritionModel.fromJson(Map<String, dynamic> json) =>
      _$CoffieNutritionModelFromJson(json);
}
