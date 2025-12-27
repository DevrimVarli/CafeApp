// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoffieModel _$CoffieModelFromJson(Map<String, dynamic> json) {
  return _CoffieModel.fromJson(json);
}

/// @nodoc
mixin _$CoffieModel {
  int get id => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<CoffieSizeModel> get sizes => throw _privateConstructorUsedError;
  String get defaultSize => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<double> get extrasAllowed => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  bool get isPopular => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  CoffieRatingModel get rating => throw _privateConstructorUsedError;
  CoffieNutritionModel get nutrition => throw _privateConstructorUsedError;

  /// Serializes this CoffieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffieModelCopyWith<CoffieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffieModelCopyWith<$Res> {
  factory $CoffieModelCopyWith(
    CoffieModel value,
    $Res Function(CoffieModel) then,
  ) = _$CoffieModelCopyWithImpl<$Res, CoffieModel>;
  @useResult
  $Res call({
    int id,
    int categoryId,
    String name,
    String shortDescription,
    String description,
    List<CoffieSizeModel> sizes,
    String defaultSize,
    String image,
    List<double> extrasAllowed,
    bool isAvailable,
    bool isPopular,
    List<String> tags,
    CoffieRatingModel rating,
    CoffieNutritionModel nutrition,
  });

  $CoffieRatingModelCopyWith<$Res> get rating;
  $CoffieNutritionModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$CoffieModelCopyWithImpl<$Res, $Val extends CoffieModel>
    implements $CoffieModelCopyWith<$Res> {
  _$CoffieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? shortDescription = null,
    Object? description = null,
    Object? sizes = null,
    Object? defaultSize = null,
    Object? image = null,
    Object? extrasAllowed = null,
    Object? isAvailable = null,
    Object? isPopular = null,
    Object? tags = null,
    Object? rating = null,
    Object? nutrition = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            shortDescription: null == shortDescription
                ? _value.shortDescription
                : shortDescription // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            sizes: null == sizes
                ? _value.sizes
                : sizes // ignore: cast_nullable_to_non_nullable
                      as List<CoffieSizeModel>,
            defaultSize: null == defaultSize
                ? _value.defaultSize
                : defaultSize // ignore: cast_nullable_to_non_nullable
                      as String,
            image: null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String,
            extrasAllowed: null == extrasAllowed
                ? _value.extrasAllowed
                : extrasAllowed // ignore: cast_nullable_to_non_nullable
                      as List<double>,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            isPopular: null == isPopular
                ? _value.isPopular
                : isPopular // ignore: cast_nullable_to_non_nullable
                      as bool,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as CoffieRatingModel,
            nutrition: null == nutrition
                ? _value.nutrition
                : nutrition // ignore: cast_nullable_to_non_nullable
                      as CoffieNutritionModel,
          )
          as $Val,
    );
  }

  /// Create a copy of CoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoffieRatingModelCopyWith<$Res> get rating {
    return $CoffieRatingModelCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  /// Create a copy of CoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoffieNutritionModelCopyWith<$Res> get nutrition {
    return $CoffieNutritionModelCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoffieModelImplCopyWith<$Res>
    implements $CoffieModelCopyWith<$Res> {
  factory _$$CoffieModelImplCopyWith(
    _$CoffieModelImpl value,
    $Res Function(_$CoffieModelImpl) then,
  ) = __$$CoffieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int categoryId,
    String name,
    String shortDescription,
    String description,
    List<CoffieSizeModel> sizes,
    String defaultSize,
    String image,
    List<double> extrasAllowed,
    bool isAvailable,
    bool isPopular,
    List<String> tags,
    CoffieRatingModel rating,
    CoffieNutritionModel nutrition,
  });

  @override
  $CoffieRatingModelCopyWith<$Res> get rating;
  @override
  $CoffieNutritionModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$CoffieModelImplCopyWithImpl<$Res>
    extends _$CoffieModelCopyWithImpl<$Res, _$CoffieModelImpl>
    implements _$$CoffieModelImplCopyWith<$Res> {
  __$$CoffieModelImplCopyWithImpl(
    _$CoffieModelImpl _value,
    $Res Function(_$CoffieModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? shortDescription = null,
    Object? description = null,
    Object? sizes = null,
    Object? defaultSize = null,
    Object? image = null,
    Object? extrasAllowed = null,
    Object? isAvailable = null,
    Object? isPopular = null,
    Object? tags = null,
    Object? rating = null,
    Object? nutrition = null,
  }) {
    return _then(
      _$CoffieModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        shortDescription: null == shortDescription
            ? _value.shortDescription
            : shortDescription // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        sizes: null == sizes
            ? _value._sizes
            : sizes // ignore: cast_nullable_to_non_nullable
                  as List<CoffieSizeModel>,
        defaultSize: null == defaultSize
            ? _value.defaultSize
            : defaultSize // ignore: cast_nullable_to_non_nullable
                  as String,
        image: null == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String,
        extrasAllowed: null == extrasAllowed
            ? _value._extrasAllowed
            : extrasAllowed // ignore: cast_nullable_to_non_nullable
                  as List<double>,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        isPopular: null == isPopular
            ? _value.isPopular
            : isPopular // ignore: cast_nullable_to_non_nullable
                  as bool,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as CoffieRatingModel,
        nutrition: null == nutrition
            ? _value.nutrition
            : nutrition // ignore: cast_nullable_to_non_nullable
                  as CoffieNutritionModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffieModelImpl implements _CoffieModel {
  const _$CoffieModelImpl({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.shortDescription,
    required this.description,
    required final List<CoffieSizeModel> sizes,
    required this.defaultSize,
    required this.image,
    required final List<double> extrasAllowed,
    required this.isAvailable,
    required this.isPopular,
    required final List<String> tags,
    required this.rating,
    required this.nutrition,
  }) : _sizes = sizes,
       _extrasAllowed = extrasAllowed,
       _tags = tags;

  factory _$CoffieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffieModelImplFromJson(json);

  @override
  final int id;
  @override
  final int categoryId;
  @override
  final String name;
  @override
  final String shortDescription;
  @override
  final String description;
  final List<CoffieSizeModel> _sizes;
  @override
  List<CoffieSizeModel> get sizes {
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizes);
  }

  @override
  final String defaultSize;
  @override
  final String image;
  final List<double> _extrasAllowed;
  @override
  List<double> get extrasAllowed {
    if (_extrasAllowed is EqualUnmodifiableListView) return _extrasAllowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extrasAllowed);
  }

  @override
  final bool isAvailable;
  @override
  final bool isPopular;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final CoffieRatingModel rating;
  @override
  final CoffieNutritionModel nutrition;

  @override
  String toString() {
    return 'CoffieModel(id: $id, categoryId: $categoryId, name: $name, shortDescription: $shortDescription, description: $description, sizes: $sizes, defaultSize: $defaultSize, image: $image, extrasAllowed: $extrasAllowed, isAvailable: $isAvailable, isPopular: $isPopular, tags: $tags, rating: $rating, nutrition: $nutrition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes) &&
            (identical(other.defaultSize, defaultSize) ||
                other.defaultSize == defaultSize) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(
              other._extrasAllowed,
              _extrasAllowed,
            ) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    categoryId,
    name,
    shortDescription,
    description,
    const DeepCollectionEquality().hash(_sizes),
    defaultSize,
    image,
    const DeepCollectionEquality().hash(_extrasAllowed),
    isAvailable,
    isPopular,
    const DeepCollectionEquality().hash(_tags),
    rating,
    nutrition,
  );

  /// Create a copy of CoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffieModelImplCopyWith<_$CoffieModelImpl> get copyWith =>
      __$$CoffieModelImplCopyWithImpl<_$CoffieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffieModelImplToJson(this);
  }
}

abstract class _CoffieModel implements CoffieModel {
  const factory _CoffieModel({
    required final int id,
    required final int categoryId,
    required final String name,
    required final String shortDescription,
    required final String description,
    required final List<CoffieSizeModel> sizes,
    required final String defaultSize,
    required final String image,
    required final List<double> extrasAllowed,
    required final bool isAvailable,
    required final bool isPopular,
    required final List<String> tags,
    required final CoffieRatingModel rating,
    required final CoffieNutritionModel nutrition,
  }) = _$CoffieModelImpl;

  factory _CoffieModel.fromJson(Map<String, dynamic> json) =
      _$CoffieModelImpl.fromJson;

  @override
  int get id;
  @override
  int get categoryId;
  @override
  String get name;
  @override
  String get shortDescription;
  @override
  String get description;
  @override
  List<CoffieSizeModel> get sizes;
  @override
  String get defaultSize;
  @override
  String get image;
  @override
  List<double> get extrasAllowed;
  @override
  bool get isAvailable;
  @override
  bool get isPopular;
  @override
  List<String> get tags;
  @override
  CoffieRatingModel get rating;
  @override
  CoffieNutritionModel get nutrition;

  /// Create a copy of CoffieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffieModelImplCopyWith<_$CoffieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
