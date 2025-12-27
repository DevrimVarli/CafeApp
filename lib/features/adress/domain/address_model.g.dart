// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      type: (json['type'] as num).toInt(),
      title: json['title'] as String,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      cityName: json['cityName'] as String,
      districtName: json['districtName'] as String,
      streetAddress: json['streetAddress'] as String?,
      addressNote: json['addressNote'] as String?,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'cityName': instance.cityName,
      'districtName': instance.districtName,
      'streetAddress': instance.streetAddress,
      'addressNote': instance.addressNote,
    };
