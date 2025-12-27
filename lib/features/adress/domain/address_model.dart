import 'package:freezed_annotation/freezed_annotation.dart';
part 'address_model.g.dart';
part 'address_model.freezed.dart';
@freezed
class AddressModel with _$AddressModel{
  const factory AddressModel({
    required int type,
    required String title,
    required String fullName,
    required String phoneNumber,
    required String cityName,
    required String districtName,
    String? streetAddress,
    String? addressNote,

  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

}
