import 'package:cafe_app/features/adress/domain/address_model.dart';
import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:cafe_app/features/home/domain/coffie_nutrition_model.dart';
import 'package:cafe_app/features/home/domain/coffie_rating_model.dart';
import 'package:cafe_app/features/home/domain/coffie_size_model.dart';
import 'package:hive_ce/hive.dart';
@GenerateAdapters(firstTypeId: 0, <AdapterSpec<dynamic>>[
  AdapterSpec<BasketCoffieModel>(),
  AdapterSpec<CoffieModel>(),
  AdapterSpec<CoffieSizeModel>(),
  AdapterSpec<CoffieRatingModel>(),
  AdapterSpec<CoffieNutritionModel>(),
  AdapterSpec<AddressModel>(),
])
part 'hive_adapters.g.dart';
