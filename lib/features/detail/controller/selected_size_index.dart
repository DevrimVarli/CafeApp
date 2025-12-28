import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'selected_size_index.g.dart';

@riverpod
class SelectedSizeIndex extends _$SelectedSizeIndex {
  @override
  int build() {
    return 0;
  }

  void changeIndex(int index) {
    state = index;
  }
}
