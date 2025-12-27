// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'districts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DistrictsModel _$DistrictsModelFromJson(Map<String, dynamic> json) {
  return _DistrictsModel.fromJson(json);
}

/// @nodoc
mixin _$DistrictsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this DistrictsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictsModelCopyWith<DistrictsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictsModelCopyWith<$Res> {
  factory $DistrictsModelCopyWith(
    DistrictsModel value,
    $Res Function(DistrictsModel) then,
  ) = _$DistrictsModelCopyWithImpl<$Res, DistrictsModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$DistrictsModelCopyWithImpl<$Res, $Val extends DistrictsModel>
    implements $DistrictsModelCopyWith<$Res> {
  _$DistrictsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DistrictsModelImplCopyWith<$Res>
    implements $DistrictsModelCopyWith<$Res> {
  factory _$$DistrictsModelImplCopyWith(
    _$DistrictsModelImpl value,
    $Res Function(_$DistrictsModelImpl) then,
  ) = __$$DistrictsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$DistrictsModelImplCopyWithImpl<$Res>
    extends _$DistrictsModelCopyWithImpl<$Res, _$DistrictsModelImpl>
    implements _$$DistrictsModelImplCopyWith<$Res> {
  __$$DistrictsModelImplCopyWithImpl(
    _$DistrictsModelImpl _value,
    $Res Function(_$DistrictsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$DistrictsModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictsModelImpl implements _DistrictsModel {
  const _$DistrictsModelImpl({required this.id, required this.name});

  factory _$DistrictsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'DistrictsModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictsModelImplCopyWith<_$DistrictsModelImpl> get copyWith =>
      __$$DistrictsModelImplCopyWithImpl<_$DistrictsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictsModelImplToJson(this);
  }
}

abstract class _DistrictsModel implements DistrictsModel {
  const factory _DistrictsModel({
    required final int id,
    required final String name,
  }) = _$DistrictsModelImpl;

  factory _DistrictsModel.fromJson(Map<String, dynamic> json) =
      _$DistrictsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of DistrictsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictsModelImplCopyWith<_$DistrictsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
