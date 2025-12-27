// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffie_nutrition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoffieNutritionModel _$CoffieNutritionModelFromJson(Map<String, dynamic> json) {
  return _CoffieNutritionModel.fromJson(json);
}

/// @nodoc
mixin _$CoffieNutritionModel {
  int get kcal => throw _privateConstructorUsedError;
  @JsonKey(name: 'sugar_g')
  int get sugar => throw _privateConstructorUsedError;
  @JsonKey(name: 'caffeine_mg')
  int get caffeine => throw _privateConstructorUsedError;

  /// Serializes this CoffieNutritionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffieNutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffieNutritionModelCopyWith<CoffieNutritionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffieNutritionModelCopyWith<$Res> {
  factory $CoffieNutritionModelCopyWith(
    CoffieNutritionModel value,
    $Res Function(CoffieNutritionModel) then,
  ) = _$CoffieNutritionModelCopyWithImpl<$Res, CoffieNutritionModel>;
  @useResult
  $Res call({
    int kcal,
    @JsonKey(name: 'sugar_g') int sugar,
    @JsonKey(name: 'caffeine_mg') int caffeine,
  });
}

/// @nodoc
class _$CoffieNutritionModelCopyWithImpl<
  $Res,
  $Val extends CoffieNutritionModel
>
    implements $CoffieNutritionModelCopyWith<$Res> {
  _$CoffieNutritionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffieNutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kcal = null,
    Object? sugar = null,
    Object? caffeine = null,
  }) {
    return _then(
      _value.copyWith(
            kcal: null == kcal
                ? _value.kcal
                : kcal // ignore: cast_nullable_to_non_nullable
                      as int,
            sugar: null == sugar
                ? _value.sugar
                : sugar // ignore: cast_nullable_to_non_nullable
                      as int,
            caffeine: null == caffeine
                ? _value.caffeine
                : caffeine // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoffieNutritionModelImplCopyWith<$Res>
    implements $CoffieNutritionModelCopyWith<$Res> {
  factory _$$CoffieNutritionModelImplCopyWith(
    _$CoffieNutritionModelImpl value,
    $Res Function(_$CoffieNutritionModelImpl) then,
  ) = __$$CoffieNutritionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int kcal,
    @JsonKey(name: 'sugar_g') int sugar,
    @JsonKey(name: 'caffeine_mg') int caffeine,
  });
}

/// @nodoc
class __$$CoffieNutritionModelImplCopyWithImpl<$Res>
    extends _$CoffieNutritionModelCopyWithImpl<$Res, _$CoffieNutritionModelImpl>
    implements _$$CoffieNutritionModelImplCopyWith<$Res> {
  __$$CoffieNutritionModelImplCopyWithImpl(
    _$CoffieNutritionModelImpl _value,
    $Res Function(_$CoffieNutritionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoffieNutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kcal = null,
    Object? sugar = null,
    Object? caffeine = null,
  }) {
    return _then(
      _$CoffieNutritionModelImpl(
        kcal: null == kcal
            ? _value.kcal
            : kcal // ignore: cast_nullable_to_non_nullable
                  as int,
        sugar: null == sugar
            ? _value.sugar
            : sugar // ignore: cast_nullable_to_non_nullable
                  as int,
        caffeine: null == caffeine
            ? _value.caffeine
            : caffeine // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffieNutritionModelImpl implements _CoffieNutritionModel {
  const _$CoffieNutritionModelImpl({
    this.kcal = 0,
    @JsonKey(name: 'sugar_g') this.sugar = 0,
    @JsonKey(name: 'caffeine_mg') this.caffeine = 0,
  });

  factory _$CoffieNutritionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffieNutritionModelImplFromJson(json);

  @override
  @JsonKey()
  final int kcal;
  @override
  @JsonKey(name: 'sugar_g')
  final int sugar;
  @override
  @JsonKey(name: 'caffeine_mg')
  final int caffeine;

  @override
  String toString() {
    return 'CoffieNutritionModel(kcal: $kcal, sugar: $sugar, caffeine: $caffeine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffieNutritionModelImpl &&
            (identical(other.kcal, kcal) || other.kcal == kcal) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            (identical(other.caffeine, caffeine) ||
                other.caffeine == caffeine));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kcal, sugar, caffeine);

  /// Create a copy of CoffieNutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffieNutritionModelImplCopyWith<_$CoffieNutritionModelImpl>
  get copyWith =>
      __$$CoffieNutritionModelImplCopyWithImpl<_$CoffieNutritionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffieNutritionModelImplToJson(this);
  }
}

abstract class _CoffieNutritionModel implements CoffieNutritionModel {
  const factory _CoffieNutritionModel({
    final int kcal,
    @JsonKey(name: 'sugar_g') final int sugar,
    @JsonKey(name: 'caffeine_mg') final int caffeine,
  }) = _$CoffieNutritionModelImpl;

  factory _CoffieNutritionModel.fromJson(Map<String, dynamic> json) =
      _$CoffieNutritionModelImpl.fromJson;

  @override
  int get kcal;
  @override
  @JsonKey(name: 'sugar_g')
  int get sugar;
  @override
  @JsonKey(name: 'caffeine_mg')
  int get caffeine;

  /// Create a copy of CoffieNutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffieNutritionModelImplCopyWith<_$CoffieNutritionModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
