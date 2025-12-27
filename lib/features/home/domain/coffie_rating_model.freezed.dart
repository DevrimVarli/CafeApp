// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffie_rating_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoffieRatingModel _$CoffieRatingModelFromJson(Map<String, dynamic> json) {
  return _CoffieRatingModel.fromJson(json);
}

/// @nodoc
mixin _$CoffieRatingModel {
  double get average => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this CoffieRatingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffieRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffieRatingModelCopyWith<CoffieRatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffieRatingModelCopyWith<$Res> {
  factory $CoffieRatingModelCopyWith(
    CoffieRatingModel value,
    $Res Function(CoffieRatingModel) then,
  ) = _$CoffieRatingModelCopyWithImpl<$Res, CoffieRatingModel>;
  @useResult
  $Res call({double average, int count});
}

/// @nodoc
class _$CoffieRatingModelCopyWithImpl<$Res, $Val extends CoffieRatingModel>
    implements $CoffieRatingModelCopyWith<$Res> {
  _$CoffieRatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffieRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? average = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            average: null == average
                ? _value.average
                : average // ignore: cast_nullable_to_non_nullable
                      as double,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoffieRatingModelImplCopyWith<$Res>
    implements $CoffieRatingModelCopyWith<$Res> {
  factory _$$CoffieRatingModelImplCopyWith(
    _$CoffieRatingModelImpl value,
    $Res Function(_$CoffieRatingModelImpl) then,
  ) = __$$CoffieRatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double average, int count});
}

/// @nodoc
class __$$CoffieRatingModelImplCopyWithImpl<$Res>
    extends _$CoffieRatingModelCopyWithImpl<$Res, _$CoffieRatingModelImpl>
    implements _$$CoffieRatingModelImplCopyWith<$Res> {
  __$$CoffieRatingModelImplCopyWithImpl(
    _$CoffieRatingModelImpl _value,
    $Res Function(_$CoffieRatingModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoffieRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? average = null, Object? count = null}) {
    return _then(
      _$CoffieRatingModelImpl(
        average: null == average
            ? _value.average
            : average // ignore: cast_nullable_to_non_nullable
                  as double,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffieRatingModelImpl implements _CoffieRatingModel {
  const _$CoffieRatingModelImpl({required this.average, required this.count});

  factory _$CoffieRatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffieRatingModelImplFromJson(json);

  @override
  final double average;
  @override
  final int count;

  @override
  String toString() {
    return 'CoffieRatingModel(average: $average, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffieRatingModelImpl &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, average, count);

  /// Create a copy of CoffieRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffieRatingModelImplCopyWith<_$CoffieRatingModelImpl> get copyWith =>
      __$$CoffieRatingModelImplCopyWithImpl<_$CoffieRatingModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffieRatingModelImplToJson(this);
  }
}

abstract class _CoffieRatingModel implements CoffieRatingModel {
  const factory _CoffieRatingModel({
    required final double average,
    required final int count,
  }) = _$CoffieRatingModelImpl;

  factory _CoffieRatingModel.fromJson(Map<String, dynamic> json) =
      _$CoffieRatingModelImpl.fromJson;

  @override
  double get average;
  @override
  int get count;

  /// Create a copy of CoffieRatingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffieRatingModelImplCopyWith<_$CoffieRatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
