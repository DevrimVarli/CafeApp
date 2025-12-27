import 'package:freezed_annotation/freezed_annotation.dart';
part 'extras_model.g.dart';
part 'extras_model.freezed.dart';
@freezed
class ExtrasModel with _$ExtrasModel {
  const factory ExtrasModel({
    required int id,
    required String type,
    required String name,
    required int price,
    
    
    }) =_ExtrasModel;
  factory ExtrasModel.fromJson(Map<String, dynamic> json) =>
      _$ExtrasModelFromJson(json);

}
