import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'obsecure_ctrl.g.dart';
@riverpod
class ObsecureCtrl extends _$ObsecureCtrl {
  @override
  bool build() {
    return false;
  }

  void change() {
    state = !state;
  }
}
