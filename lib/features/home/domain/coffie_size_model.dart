import 'package:freezed_annotation/freezed_annotation.dart';
part 'coffie_size_model.g.dart';
part 'coffie_size_model.freezed.dart';
@freezed
class CoffieSizeModel with _$CoffieSizeModel {
  const factory CoffieSizeModel({
    required String size,
    required int price,
  }) = _CoffieSizeModel;
  factory CoffieSizeModel.fromJson(Map<String, dynamic> json) =>
      _$CoffieSizeModelFromJson(json);
}
