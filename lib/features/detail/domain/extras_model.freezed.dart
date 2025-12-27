// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extras_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExtrasModel _$ExtrasModelFromJson(Map<String, dynamic> json) {
  return _ExtrasModel.fromJson(json);
}

/// @nodoc
mixin _$ExtrasModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  /// Serializes this ExtrasModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtrasModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtrasModelCopyWith<ExtrasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtrasModelCopyWith<$Res> {
  factory $ExtrasModelCopyWith(
    ExtrasModel value,
    $Res Function(ExtrasModel) then,
  ) = _$ExtrasModelCopyWithImpl<$Res, ExtrasModel>;
  @useResult
  $Res call({int id, String type, String name, int price});
}

/// @nodoc
class _$ExtrasModelCopyWithImpl<$Res, $Val extends ExtrasModel>
    implements $ExtrasModelCopyWith<$Res> {
  _$ExtrasModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtrasModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtrasModelImplCopyWith<$Res>
    implements $ExtrasModelCopyWith<$Res> {
  factory _$$ExtrasModelImplCopyWith(
    _$ExtrasModelImpl value,
    $Res Function(_$ExtrasModelImpl) then,
  ) = __$$ExtrasModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String type, String name, int price});
}

/// @nodoc
class __$$ExtrasModelImplCopyWithImpl<$Res>
    extends _$ExtrasModelCopyWithImpl<$Res, _$ExtrasModelImpl>
    implements _$$ExtrasModelImplCopyWith<$Res> {
  __$$ExtrasModelImplCopyWithImpl(
    _$ExtrasModelImpl _value,
    $Res Function(_$ExtrasModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtrasModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(
      _$ExtrasModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtrasModelImpl implements _ExtrasModel {
  const _$ExtrasModelImpl({
    required this.id,
    required this.type,
    required this.name,
    required this.price,
  });

  factory _$ExtrasModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtrasModelImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final int price;

  @override
  String toString() {
    return 'ExtrasModel(id: $id, type: $type, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtrasModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, name, price);

  /// Create a copy of ExtrasModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtrasModelImplCopyWith<_$ExtrasModelImpl> get copyWith =>
      __$$ExtrasModelImplCopyWithImpl<_$ExtrasModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtrasModelImplToJson(this);
  }
}

abstract class _ExtrasModel implements ExtrasModel {
  const factory _ExtrasModel({
    required final int id,
    required final String type,
    required final String name,
    required final int price,
  }) = _$ExtrasModelImpl;

  factory _ExtrasModel.fromJson(Map<String, dynamic> json) =
      _$ExtrasModelImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get name;
  @override
  int get price;

  /// Create a copy of ExtrasModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtrasModelImplCopyWith<_$ExtrasModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
