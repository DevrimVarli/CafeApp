// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffie_nutrition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoffieNutritionModelImpl _$$CoffieNutritionModelImplFromJson(
  Map<String, dynamic> json,
) => _$CoffieNutritionModelImpl(
  kcal: (json['kcal'] as num).toInt(),
  sugar_g: (json['sugar_g'] as num).toInt(),
  caffeine_mg: (json['caffeine_mg'] as num).toInt(),
);

Map<String, dynamic> _$$CoffieNutritionModelImplToJson(
  _$CoffieNutritionModelImpl instance,
) => <String, dynamic>{
  'kcal': instance.kcal,
  'sugar_g': instance.sugar_g,
  'caffeine_mg': instance.caffeine_mg,
};
