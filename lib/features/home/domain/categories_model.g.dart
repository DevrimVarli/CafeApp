// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesModelImpl _$$CategoriesModelImplFromJson(
  Map<String, dynamic> json,
) => _$CategoriesModelImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  image: json['image'] as String,
  order: (json['order'] as num).toInt(),
);

Map<String, dynamic> _$$CategoriesModelImplToJson(
  _$CategoriesModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image': instance.image,
  'order': instance.order,
};
