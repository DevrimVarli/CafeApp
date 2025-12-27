import 'package:freezed_annotation/freezed_annotation.dart';
part 'districts_model.g.dart';
part 'districts_model.freezed.dart';
@freezed
class DistrictsModel with _$DistrictsModel{
  const factory DistrictsModel({
    required int id,
    required String name,
  }) = _DistrictsModel;

  factory DistrictsModel.fromJson(Map<String, dynamic> json) =>
      _$DistrictsModelFromJson(json);
}
