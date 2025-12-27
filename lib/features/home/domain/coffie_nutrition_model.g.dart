// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffie_nutrition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoffieNutritionModelImpl _$$CoffieNutritionModelImplFromJson(
  Map<String, dynamic> json,
) => _$CoffieNutritionModelImpl(
  kcal: (json['kcal'] as num?)?.toInt() ?? 0,
  sugar: (json['sugar_g'] as num?)?.toInt() ?? 0,
  caffeine: (json['caffeine_mg'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$CoffieNutritionModelImplToJson(
  _$CoffieNutritionModelImpl instance,
) => <String, dynamic>{
  'kcal': instance.kcal,
  'sugar_g': instance.sugar,
  'caffeine_mg': instance.caffeine,
};
