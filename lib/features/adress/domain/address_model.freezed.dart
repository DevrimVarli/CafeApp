// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  int get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  String get districtName => throw _privateConstructorUsedError;
  String? get streetAddress => throw _privateConstructorUsedError;
  String? get addressNote => throw _privateConstructorUsedError;

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
    AddressModel value,
    $Res Function(AddressModel) then,
  ) = _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call({
    int type,
    String title,
    String fullName,
    String phoneNumber,
    String cityName,
    String districtName,
    String? streetAddress,
    String? addressNote,
  });
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? cityName = null,
    Object? districtName = null,
    Object? streetAddress = freezed,
    Object? addressNote = freezed,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            cityName: null == cityName
                ? _value.cityName
                : cityName // ignore: cast_nullable_to_non_nullable
                      as String,
            districtName: null == districtName
                ? _value.districtName
                : districtName // ignore: cast_nullable_to_non_nullable
                      as String,
            streetAddress: freezed == streetAddress
                ? _value.streetAddress
                : streetAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            addressNote: freezed == addressNote
                ? _value.addressNote
                : addressNote // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
    _$AddressModelImpl value,
    $Res Function(_$AddressModelImpl) then,
  ) = __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int type,
    String title,
    String fullName,
    String phoneNumber,
    String cityName,
    String districtName,
    String? streetAddress,
    String? addressNote,
  });
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
    _$AddressModelImpl _value,
    $Res Function(_$AddressModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? cityName = null,
    Object? districtName = null,
    Object? streetAddress = freezed,
    Object? addressNote = freezed,
  }) {
    return _then(
      _$AddressModelImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        cityName: null == cityName
            ? _value.cityName
            : cityName // ignore: cast_nullable_to_non_nullable
                  as String,
        districtName: null == districtName
            ? _value.districtName
            : districtName // ignore: cast_nullable_to_non_nullable
                  as String,
        streetAddress: freezed == streetAddress
            ? _value.streetAddress
            : streetAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        addressNote: freezed == addressNote
            ? _value.addressNote
            : addressNote // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  const _$AddressModelImpl({
    required this.type,
    required this.title,
    required this.fullName,
    required this.phoneNumber,
    required this.cityName,
    required this.districtName,
    this.streetAddress,
    this.addressNote,
  });

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  final int type;
  @override
  final String title;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String cityName;
  @override
  final String districtName;
  @override
  final String? streetAddress;
  @override
  final String? addressNote;

  @override
  String toString() {
    return 'AddressModel(type: $type, title: $title, fullName: $fullName, phoneNumber: $phoneNumber, cityName: $cityName, districtName: $districtName, streetAddress: $streetAddress, addressNote: $addressNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.districtName, districtName) ||
                other.districtName == districtName) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.addressNote, addressNote) ||
                other.addressNote == addressNote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    type,
    title,
    fullName,
    phoneNumber,
    cityName,
    districtName,
    streetAddress,
    addressNote,
  );

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(this);
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel({
    required final int type,
    required final String title,
    required final String fullName,
    required final String phoneNumber,
    required final String cityName,
    required final String districtName,
    final String? streetAddress,
    final String? addressNote,
  }) = _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  int get type;
  @override
  String get title;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get cityName;
  @override
  String get districtName;
  @override
  String? get streetAddress;
  @override
  String? get addressNote;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
