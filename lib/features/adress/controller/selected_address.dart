import 'package:cafe_app/features/adress/domain/address_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'selected_address.g.dart';
@Riverpod(keepAlive: true)
class SelectedAddress extends _$SelectedAddress {
  @override
  AddressModel build() {
    return const AddressModel(type: 0, title: '', fullName: '', phoneNumber: '', cityName: '', districtName: '');
  }

  void change(AddressModel value) {
    state = value;
  }
}
