// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_coffie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BasketCoffieModel _$BasketCoffieModelFromJson(Map<String, dynamic> json) {
  return _BasketCoffieModel.fromJson(json);
}

/// @nodoc
mixin _$BasketCoffieModel {
  CoffieModel get coffieModel => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  CoffieSizeModel get selectedSize => throw _privateConstructorUsedError;

  /// Serializes this BasketCoffieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasketCoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketCoffieModelCopyWith<BasketCoffieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketCoffieModelCopyWith<$Res> {
  factory $BasketCoffieModelCopyWith(
    BasketCoffieModel value,
    $Res Function(BasketCoffieModel) then,
  ) = _$BasketCoffieModelCopyWithImpl<$Res, BasketCoffieModel>;
  @useResult
  $Res call({CoffieModel coffieModel, int count, CoffieSizeModel selectedSize});

  $CoffieModelCopyWith<$Res> get coffieModel;
  $CoffieSizeModelCopyWith<$Res> get selectedSize;
}

/// @nodoc
class _$BasketCoffieModelCopyWithImpl<$Res, $Val extends BasketCoffieModel>
    implements $BasketCoffieModelCopyWith<$Res> {
  _$BasketCoffieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketCoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffieModel = null,
    Object? count = null,
    Object? selectedSize = null,
  }) {
    return _then(
      _value.copyWith(
            coffieModel: null == coffieModel
                ? _value.coffieModel
                : coffieModel // ignore: cast_nullable_to_non_nullable
                      as CoffieModel,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            selectedSize: null == selectedSize
                ? _value.selectedSize
                : selectedSize // ignore: cast_nullable_to_non_nullable
                      as CoffieSizeModel,
          )
          as $Val,
    );
  }

  /// Create a copy of BasketCoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoffieModelCopyWith<$Res> get coffieModel {
    return $CoffieModelCopyWith<$Res>(_value.coffieModel, (value) {
      return _then(_value.copyWith(coffieModel: value) as $Val);
    });
  }

  /// Create a copy of BasketCoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoffieSizeModelCopyWith<$Res> get selectedSize {
    return $CoffieSizeModelCopyWith<$Res>(_value.selectedSize, (value) {
      return _then(_value.copyWith(selectedSize: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasketCoffieModelImplCopyWith<$Res>
    implements $BasketCoffieModelCopyWith<$Res> {
  factory _$$BasketCoffieModelImplCopyWith(
    _$BasketCoffieModelImpl value,
    $Res Function(_$BasketCoffieModelImpl) then,
  ) = __$$BasketCoffieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoffieModel coffieModel, int count, CoffieSizeModel selectedSize});

  @override
  $CoffieModelCopyWith<$Res> get coffieModel;
  @override
  $CoffieSizeModelCopyWith<$Res> get selectedSize;
}

/// @nodoc
class __$$BasketCoffieModelImplCopyWithImpl<$Res>
    extends _$BasketCoffieModelCopyWithImpl<$Res, _$BasketCoffieModelImpl>
    implements _$$BasketCoffieModelImplCopyWith<$Res> {
  __$$BasketCoffieModelImplCopyWithImpl(
    _$BasketCoffieModelImpl _value,
    $Res Function(_$BasketCoffieModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BasketCoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffieModel = null,
    Object? count = null,
    Object? selectedSize = null,
  }) {
    return _then(
      _$BasketCoffieModelImpl(
        coffieModel: null == coffieModel
            ? _value.coffieModel
            : coffieModel // ignore: cast_nullable_to_non_nullable
                  as CoffieModel,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        selectedSize: null == selectedSize
            ? _value.selectedSize
            : selectedSize // ignore: cast_nullable_to_non_nullable
                  as CoffieSizeModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketCoffieModelImpl implements _BasketCoffieModel {
  const _$BasketCoffieModelImpl({
    required this.coffieModel,
    required this.count,
    required this.selectedSize,
  });

  factory _$BasketCoffieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketCoffieModelImplFromJson(json);

  @override
  final CoffieModel coffieModel;
  @override
  final int count;
  @override
  final CoffieSizeModel selectedSize;

  @override
  String toString() {
    return 'BasketCoffieModel(coffieModel: $coffieModel, count: $count, selectedSize: $selectedSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketCoffieModelImpl &&
            (identical(other.coffieModel, coffieModel) ||
                other.coffieModel == coffieModel) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, coffieModel, count, selectedSize);

  /// Create a copy of BasketCoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketCoffieModelImplCopyWith<_$BasketCoffieModelImpl> get copyWith =>
      __$$BasketCoffieModelImplCopyWithImpl<_$BasketCoffieModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketCoffieModelImplToJson(this);
  }
}

abstract class _BasketCoffieModel implements BasketCoffieModel {
  const factory _BasketCoffieModel({
    required final CoffieModel coffieModel,
    required final int count,
    required final CoffieSizeModel selectedSize,
  }) = _$BasketCoffieModelImpl;

  factory _BasketCoffieModel.fromJson(Map<String, dynamic> json) =
      _$BasketCoffieModelImpl.fromJson;

  @override
  CoffieModel get coffieModel;
  @override
  int get count;
  @override
  CoffieSizeModel get selectedSize;

  /// Create a copy of BasketCoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketCoffieModelImplCopyWith<_$BasketCoffieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
