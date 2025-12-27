import 'package:freezed_annotation/freezed_annotation.dart';
part 'daily_hours_model.g.dart';
part 'daily_hours_model.freezed.dart';
@freezed
class DailyHoursModel with _$DailyHoursModel{
  const factory DailyHoursModel({
    required String open,
    required String close,
  }) = _DailyHoursModel;

  factory DailyHoursModel.fromJson(Map<String, dynamic> json) =>
      _$DailyHoursModelFromJson(json);
}
