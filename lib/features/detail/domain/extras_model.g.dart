// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extras_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtrasModelImpl _$$ExtrasModelImplFromJson(Map<String, dynamic> json) =>
    _$ExtrasModelImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$$ExtrasModelImplToJson(_$ExtrasModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'price': instance.price,
    };
