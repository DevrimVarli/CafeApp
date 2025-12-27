// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyModelImpl _$$DailyModelImplFromJson(Map<String, dynamic> json) =>
    _$DailyModelImpl(
      mon: DailyHoursModel.fromJson(json['mon'] as Map<String, dynamic>),
      tue: DailyHoursModel.fromJson(json['tue'] as Map<String, dynamic>),
      wed: DailyHoursModel.fromJson(json['wed'] as Map<String, dynamic>),
      thu: DailyHoursModel.fromJson(json['thu'] as Map<String, dynamic>),
      fri: DailyHoursModel.fromJson(json['fri'] as Map<String, dynamic>),
      sat: DailyHoursModel.fromJson(json['sat'] as Map<String, dynamic>),
      sun: DailyHoursModel.fromJson(json['sun'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DailyModelImplToJson(_$DailyModelImpl instance) =>
    <String, dynamic>{
      'mon': instance.mon,
      'tue': instance.tue,
      'wed': instance.wed,
      'thu': instance.thu,
      'fri': instance.fri,
      'sat': instance.sat,
      'sun': instance.sun,
    };
