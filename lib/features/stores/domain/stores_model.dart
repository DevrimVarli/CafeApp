
import 'package:cafe_app/features/stores/domain/daily_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'stores_model.g.dart';
part 'stores_model.freezed.dart';
@freezed
class StoresModel with _$StoresModel{
  const factory StoresModel({
    required int id,
    required String name,
    required String city,
    required String address,
    required String phone,
    required List<String> services,
    required DailyModel openingHours,


  }) = _StoresModel;

  factory StoresModel.fromJson(Map<String, dynamic> json) =>
      _$StoresModelFromJson(json);
}
