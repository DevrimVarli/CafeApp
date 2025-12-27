import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'selected_city_name.g.dart';
@riverpod
class SelectedCityName extends _$SelectedCityName {
  @override
  String build() {
    return '';
  }

  void change(String value) {
    state = value;
  }
}
