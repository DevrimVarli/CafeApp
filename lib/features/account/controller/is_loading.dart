import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'is_loading.g.dart';

@riverpod
class IsLoading extends _$IsLoading {
  @override
  bool build() {
    return false;
  }

  void change() {
    state = !state;
  }
}
