import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'is_login.g.dart';
@riverpod
class IsLogin extends _$IsLogin {
  @override
  bool build() {
    return true;
  }

  void change() {
    state = !state;
  }
}
