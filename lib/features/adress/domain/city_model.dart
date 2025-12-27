import 'package:cafe_app/features/adress/domain/districts_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'city_model.g.dart';
part 'city_model.freezed.dart';
@freezed
class CityModel with _$CityModel{
  const factory CityModel({
    required int id,
    required String name,
    required List<DistrictsModel> districts,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
