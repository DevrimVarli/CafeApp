import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'selected_district_name.g.dart';
@riverpod
class SelectedDistrictName extends _$SelectedDistrictName {
  @override
  String build() {
    return '';
  }

  void change(String value) {
    state = value;
  }
}
