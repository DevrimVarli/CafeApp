import 'package:cafe_app/features/stores/domain/daily_hours_model.dart';
import 'package:cafe_app/features/stores/domain/daily_model.dart';
import 'package:cafe_app/features/stores/domain/stores_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'selected_store.g.dart';

@Riverpod(keepAlive: true)
class SelectedStore extends _$SelectedStore {
  @override
  StoresModel build() {
    return const StoresModel(
      id: 0,
      name: '',
      city: '',
      address: '',
      phone: '',
      services: <String>[],
      openingHours: DailyModel(
        mon: DailyHoursModel(open: '', close: ''),
        tue: DailyHoursModel(open: '', close: ''),
        wed: DailyHoursModel(open: '', close: ''),
        thu: DailyHoursModel(open: '', close: ''),
        fri: DailyHoursModel(open: '', close: ''),
        sat: DailyHoursModel(open: '', close: ''),
        sun: DailyHoursModel(open: '', close: ''),
      ),
    );
  }

  void setSelectedStore(StoresModel store) {
    state = store;
  }
}
