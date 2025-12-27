import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_page_index.g.dart';

@riverpod
class SelectedPageIndex extends _$SelectedPageIndex {
  @override
  int build() {
    return 0;
  }

  void changeIndex(int index) {
    state = index;
  }
}
