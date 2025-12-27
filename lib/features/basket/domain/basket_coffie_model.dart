import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:cafe_app/features/home/domain/coffie_size_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'basket_coffie_model.g.dart';
part 'basket_coffie_model.freezed.dart';

@freezed
class BasketCoffieModel with _$BasketCoffieModel{
  const factory BasketCoffieModel({
    required CoffieModel coffieModel,
    required int count,
    required CoffieSizeModel selectedSize,
  }) = _BasketCoffieModel;
  factory BasketCoffieModel.fromJson(Map<String, dynamic> json) =>
      _$BasketCoffieModelFromJson(json);
}
