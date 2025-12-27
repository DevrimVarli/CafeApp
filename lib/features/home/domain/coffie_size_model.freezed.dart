// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffie_size_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoffieSizeModel _$CoffieSizeModelFromJson(Map<String, dynamic> json) {
  return _CoffieSizeModel.fromJson(json);
}

/// @nodoc
mixin _$CoffieSizeModel {
  String get size => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  /// Serializes this CoffieSizeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffieSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffieSizeModelCopyWith<CoffieSizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffieSizeModelCopyWith<$Res> {
  factory $CoffieSizeModelCopyWith(
    CoffieSizeModel value,
    $Res Function(CoffieSizeModel) then,
  ) = _$CoffieSizeModelCopyWithImpl<$Res, CoffieSizeModel>;
  @useResult
  $Res call({String size, int price});
}

/// @nodoc
class _$CoffieSizeModelCopyWithImpl<$Res, $Val extends CoffieSizeModel>
    implements $CoffieSizeModelCopyWith<$Res> {
  _$CoffieSizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffieSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? size = null, Object? price = null}) {
    return _then(
      _value.copyWith(
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CoffieSizeModelImplCopyWith<$Res>
    implements $CoffieSizeModelCopyWith<$Res> {
  factory _$$CoffieSizeModelImplCopyWith(
    _$CoffieSizeModelImpl value,
    $Res Function(_$CoffieSizeModelImpl) then,
  ) = __$$CoffieSizeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String size, int price});
}

/// @nodoc
class __$$CoffieSizeModelImplCopyWithImpl<$Res>
    extends _$CoffieSizeModelCopyWithImpl<$Res, _$CoffieSizeModelImpl>
    implements _$$CoffieSizeModelImplCopyWith<$Res> {
  __$$CoffieSizeModelImplCopyWithImpl(
    _$CoffieSizeModelImpl _value,
    $Res Function(_$CoffieSizeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoffieSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? size = null, Object? price = null}) {
    return _then(
      _$CoffieSizeModelImpl(
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
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
class _$CoffieSizeModelImpl implements _CoffieSizeModel {
  const _$CoffieSizeModelImpl({required this.size, required this.price});

  factory _$CoffieSizeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffieSizeModelImplFromJson(json);

  @override
  final String size;
  @override
  final int price;

  @override
  String toString() {
    return 'CoffieSizeModel(size: $size, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffieSizeModelImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size, price);

  /// Create a copy of CoffieSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffieSizeModelImplCopyWith<_$CoffieSizeModelImpl> get copyWith =>
      __$$CoffieSizeModelImplCopyWithImpl<_$CoffieSizeModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffieSizeModelImplToJson(this);
  }
}

abstract class _CoffieSizeModel implements CoffieSizeModel {
  const factory _CoffieSizeModel({
    required final String size,
    required final int price,
  }) = _$CoffieSizeModelImpl;

  factory _CoffieSizeModel.fromJson(Map<String, dynamic> json) =
      _$CoffieSizeModelImpl.fromJson;

  @override
  String get size;
  @override
  int get price;

  /// Create a copy of CoffieSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffieSizeModelImplCopyWith<_$CoffieSizeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
