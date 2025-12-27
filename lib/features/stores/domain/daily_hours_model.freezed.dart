// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_hours_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyHoursModel _$DailyHoursModelFromJson(Map<String, dynamic> json) {
  return _DailyHoursModel.fromJson(json);
}

/// @nodoc
mixin _$DailyHoursModel {
  String get open => throw _privateConstructorUsedError;
  String get close => throw _privateConstructorUsedError;

  /// Serializes this DailyHoursModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyHoursModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyHoursModelCopyWith<DailyHoursModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyHoursModelCopyWith<$Res> {
  factory $DailyHoursModelCopyWith(
    DailyHoursModel value,
    $Res Function(DailyHoursModel) then,
  ) = _$DailyHoursModelCopyWithImpl<$Res, DailyHoursModel>;
  @useResult
  $Res call({String open, String close});
}

/// @nodoc
class _$DailyHoursModelCopyWithImpl<$Res, $Val extends DailyHoursModel>
    implements $DailyHoursModelCopyWith<$Res> {
  _$DailyHoursModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyHoursModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? open = null, Object? close = null}) {
    return _then(
      _value.copyWith(
            open: null == open
                ? _value.open
                : open // ignore: cast_nullable_to_non_nullable
                      as String,
            close: null == close
                ? _value.close
                : close // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyHoursModelImplCopyWith<$Res>
    implements $DailyHoursModelCopyWith<$Res> {
  factory _$$DailyHoursModelImplCopyWith(
    _$DailyHoursModelImpl value,
    $Res Function(_$DailyHoursModelImpl) then,
  ) = __$$DailyHoursModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String open, String close});
}

/// @nodoc
class __$$DailyHoursModelImplCopyWithImpl<$Res>
    extends _$DailyHoursModelCopyWithImpl<$Res, _$DailyHoursModelImpl>
    implements _$$DailyHoursModelImplCopyWith<$Res> {
  __$$DailyHoursModelImplCopyWithImpl(
    _$DailyHoursModelImpl _value,
    $Res Function(_$DailyHoursModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyHoursModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? open = null, Object? close = null}) {
    return _then(
      _$DailyHoursModelImpl(
        open: null == open
            ? _value.open
            : open // ignore: cast_nullable_to_non_nullable
                  as String,
        close: null == close
            ? _value.close
            : close // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyHoursModelImpl implements _DailyHoursModel {
  const _$DailyHoursModelImpl({required this.open, required this.close});

  factory _$DailyHoursModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyHoursModelImplFromJson(json);

  @override
  final String open;
  @override
  final String close;

  @override
  String toString() {
    return 'DailyHoursModel(open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyHoursModelImpl &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  /// Create a copy of DailyHoursModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyHoursModelImplCopyWith<_$DailyHoursModelImpl> get copyWith =>
      __$$DailyHoursModelImplCopyWithImpl<_$DailyHoursModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyHoursModelImplToJson(this);
  }
}

abstract class _DailyHoursModel implements DailyHoursModel {
  const factory _DailyHoursModel({
    required final String open,
    required final String close,
  }) = _$DailyHoursModelImpl;

  factory _DailyHoursModel.fromJson(Map<String, dynamic> json) =
      _$DailyHoursModelImpl.fromJson;

  @override
  String get open;
  @override
  String get close;

  /// Create a copy of DailyHoursModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyHoursModelImplCopyWith<_$DailyHoursModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
