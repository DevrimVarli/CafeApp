import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'selected_addres_type.g.dart';
@riverpod
class SelectedAddresType extends _$SelectedAddresType {
  @override
  int build() {
    return 0;
  }

  void change(int value) {
    state = value;
  }
}
