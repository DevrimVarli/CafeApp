// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_coffie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketCoffieModelImpl _$$BasketCoffieModelImplFromJson(
  Map<String, dynamic> json,
) => _$BasketCoffieModelImpl(
  coffieModel: CoffieModel.fromJson(
    json['coffieModel'] as Map<String, dynamic>,
  ),
  count: (json['count'] as num).toInt(),
  selectedSize: CoffieSizeModel.fromJson(
    json['selectedSize'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$BasketCoffieModelImplToJson(
  _$BasketCoffieModelImpl instance,
) => <String, dynamic>{
  'coffieModel': instance.coffieModel,
  'count': instance.count,
  'selectedSize': instance.selectedSize,
};
