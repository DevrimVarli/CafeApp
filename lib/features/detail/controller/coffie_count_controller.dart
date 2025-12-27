import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'coffie_count_controller.g.dart';

@riverpod
class CoffieCountController extends _$CoffieCountController {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    if (state > 0) {
      state--;
    }
  }
}
