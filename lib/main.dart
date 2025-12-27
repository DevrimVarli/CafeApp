import 'dart:io';

import 'package:cafe_app/features/adress/domain/address_model.dart';
import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:cafe_app/firebase_options.dart';
import 'package:cafe_app/hive/hive_registrar.g.dart';
import 'package:cafe_app/router/app_routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Directory directory = await getTemporaryDirectory();
  Hive
    ..init(directory.path)
    ..registerAdapters();
  await Hive.openBox<BasketCoffieModel>('sepet');
  await Hive.openBox<CoffieModel>('favoriler');
  await Hive.openBox<AddressModel>('adresler');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const <Locale>[Locale('en'), Locale('tr')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRoutes,
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
