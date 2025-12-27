import 'package:cafe_app/features/stores/domain/daily_hours_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'daily_model.g.dart';
part 'daily_model.freezed.dart';

@freezed
class DailyModel with _$DailyModel{
  const factory DailyModel({
    required DailyHoursModel mon,
    required DailyHoursModel tue,
    required DailyHoursModel wed,
    required DailyHoursModel thu,
    required DailyHoursModel fri,
    required DailyHoursModel sat,
    required DailyHoursModel sun,
  }) = _DailyModel;

  factory DailyModel.fromJson(Map<String, dynamic> json) =>
      _$DailyModelFromJson(json);
}
