import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'remember_me_ctr.g.dart';
@riverpod
class RememberMeCtr extends _$RememberMeCtr {
  @override
  bool build() {
    return false;
  }

  void change() {
    state = !state;
  }
}
