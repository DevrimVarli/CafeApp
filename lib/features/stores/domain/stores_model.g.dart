// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoresModelImpl _$$StoresModelImplFromJson(Map<String, dynamic> json) =>
    _$StoresModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      city: json['city'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      services: (json['services'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      openingHours: DailyModel.fromJson(
        json['openingHours'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$StoresModelImplToJson(_$StoresModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'address': instance.address,
      'phone': instance.phone,
      'services': instance.services,
      'openingHours': instance.openingHours,
    };
