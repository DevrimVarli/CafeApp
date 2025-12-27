import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'categories_index.g.dart';
@riverpod
class CategoriesIndex extends _$CategoriesIndex {
  @override
  int build() {
    return 0;
  }
  void changeIndex(int index) {
    state = index;
  }
}
