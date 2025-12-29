import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_controller.g.dart';
@riverpod
class SearchController extends _$SearchController {
  @override
  String build() {
    return '';
  }
  void changeIndex(String value) {
    state = value;
  }
}
