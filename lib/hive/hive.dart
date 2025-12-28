import 'dart:io';

import 'package:cafe_app/features/adress/domain/address_model.dart';
import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:cafe_app/hive/hive_registrar.g.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initHive() async {
  Directory directory = await getTemporaryDirectory();
  Hive
    ..init(directory.path)
    ..registerAdapters();
  await Hive.openBox<BasketCoffieModel>('sepet');
  await Hive.openBox<CoffieModel>('favoriler');
  await Hive.openBox<AddressModel>('adresler');
}
