// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoresModel _$StoresModelFromJson(Map<String, dynamic> json) {
  return _StoresModel.fromJson(json);
}

/// @nodoc
mixin _$StoresModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  List<String> get services => throw _privateConstructorUsedError;
  DailyModel get openingHours => throw _privateConstructorUsedError;

  /// Serializes this StoresModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoresModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoresModelCopyWith<StoresModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresModelCopyWith<$Res> {
  factory $StoresModelCopyWith(
    StoresModel value,
    $Res Function(StoresModel) then,
  ) = _$StoresModelCopyWithImpl<$Res, StoresModel>;
  @useResult
  $Res call({
    int id,
    String name,
    String city,
    String address,
    String phone,
    List<String> services,
    DailyModel openingHours,
  });

  $DailyModelCopyWith<$Res> get openingHours;
}

/// @nodoc
class _$StoresModelCopyWithImpl<$Res, $Val extends StoresModel>
    implements $StoresModelCopyWith<$Res> {
  _$StoresModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoresModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? address = null,
    Object? phone = null,
    Object? services = null,
    Object? openingHours = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            services: null == services
                ? _value.services
                : services // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            openingHours: null == openingHours
                ? _value.openingHours
                : openingHours // ignore: cast_nullable_to_non_nullable
                      as DailyModel,
          )
          as $Val,
    );
  }

  /// Create a copy of StoresModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyModelCopyWith<$Res> get openingHours {
    return $DailyModelCopyWith<$Res>(_value.openingHours, (value) {
      return _then(_value.copyWith(openingHours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoresModelImplCopyWith<$Res>
    implements $StoresModelCopyWith<$Res> {
  factory _$$StoresModelImplCopyWith(
    _$StoresModelImpl value,
    $Res Function(_$StoresModelImpl) then,
  ) = __$$StoresModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String city,
    String address,
    String phone,
    List<String> services,
    DailyModel openingHours,
  });

  @override
  $DailyModelCopyWith<$Res> get openingHours;
}

/// @nodoc
class __$$StoresModelImplCopyWithImpl<$Res>
    extends _$StoresModelCopyWithImpl<$Res, _$StoresModelImpl>
    implements _$$StoresModelImplCopyWith<$Res> {
  __$$StoresModelImplCopyWithImpl(
    _$StoresModelImpl _value,
    $Res Function(_$StoresModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoresModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? address = null,
    Object? phone = null,
    Object? services = null,
    Object? openingHours = null,
  }) {
    return _then(
      _$StoresModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        services: null == services
            ? _value._services
            : services // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        openingHours: null == openingHours
            ? _value.openingHours
            : openingHours // ignore: cast_nullable_to_non_nullable
                  as DailyModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoresModelImpl implements _StoresModel {
  const _$StoresModelImpl({
    required this.id,
    required this.name,
    required this.city,
    required this.address,
    required this.phone,
    required final List<String> services,
    required this.openingHours,
  }) : _services = services;

  factory _$StoresModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoresModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String city;
  @override
  final String address;
  @override
  final String phone;
  final List<String> _services;
  @override
  List<String> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final DailyModel openingHours;

  @override
  String toString() {
    return 'StoresModel(id: $id, name: $name, city: $city, address: $address, phone: $phone, services: $services, openingHours: $openingHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    city,
    address,
    phone,
    const DeepCollectionEquality().hash(_services),
    openingHours,
  );

  /// Create a copy of StoresModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresModelImplCopyWith<_$StoresModelImpl> get copyWith =>
      __$$StoresModelImplCopyWithImpl<_$StoresModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoresModelImplToJson(this);
  }
}

abstract class _StoresModel implements StoresModel {
  const factory _StoresModel({
    required final int id,
    required final String name,
    required final String city,
    required final String address,
    required final String phone,
    required final List<String> services,
    required final DailyModel openingHours,
  }) = _$StoresModelImpl;

  factory _StoresModel.fromJson(Map<String, dynamic> json) =
      _$StoresModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get city;
  @override
  String get address;
  @override
  String get phone;
  @override
  List<String> get services;
  @override
  DailyModel get openingHours;

  /// Create a copy of StoresModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoresModelImplCopyWith<_$StoresModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
