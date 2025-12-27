// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoffieModelImpl _$$CoffieModelImplFromJson(Map<String, dynamic> json) =>
    _$CoffieModelImpl(
      id: (json['id'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String,
      description: json['description'] as String,
      sizes: (json['sizes'] as List<dynamic>)
          .map((e) => CoffieSizeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultSize: json['defaultSize'] as String,
      image: json['image'] as String,
      extrasAllowed: (json['extrasAllowed'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      isAvailable: json['isAvailable'] as bool,
      isPopular: json['isPopular'] as bool,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      rating: CoffieRatingModel.fromJson(
        json['rating'] as Map<String, dynamic>,
      ),
      nutrition: CoffieNutritionModel.fromJson(
        json['nutrition'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$CoffieModelImplToJson(_$CoffieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'description': instance.description,
      'sizes': instance.sizes,
      'defaultSize': instance.defaultSize,
      'image': instance.image,
      'extrasAllowed': instance.extrasAllowed,
      'isAvailable': instance.isAvailable,
      'isPopular': instance.isPopular,
      'tags': instance.tags,
      'rating': instance.rating,
      'nutrition': instance.nutrition,
    };
