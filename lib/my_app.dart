import 'package:cafe_app/common/styles/theme_mode_controller.dart';
import 'package:cafe_app/common/styles/theme_palette.dart';
import 'package:cafe_app/router/app_routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: appRoutes,
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        colors: myLightColors,
        subThemesData: const FlexSubThemesData(
          elevatedButtonRadius: 12,
          inputDecoratorRadius: 12,
          useMaterial3Typography: true,
        ),
        fontFamily: GoogleFonts.sora().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(
        colors: myDarkColors,
        subThemesData: const FlexSubThemesData(
          elevatedButtonRadius: 12,
          inputDecoratorRadius: 12,
          useMaterial3Typography: true,
        ),
        fontFamily: GoogleFonts.sora().fontFamily,
      ),
      themeMode: ref.watch(themeModeControllerProvider),
    );
  }
}
