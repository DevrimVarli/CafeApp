import 'package:freezed_annotation/freezed_annotation.dart';
part 'coffie_rating_model.g.dart';
part 'coffie_rating_model.freezed.dart';
@freezed
class CoffieRatingModel with _$CoffieRatingModel {
  const factory CoffieRatingModel({
    required double average,
    required int count,
  }) = _CoffieRatingModel;
  factory CoffieRatingModel.fromJson(Map<String, dynamic> json) =>
      _$CoffieRatingModelFromJson(json);
}
