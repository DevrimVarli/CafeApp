import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_mode_controller.g.dart';
@Riverpod(keepAlive: true)
class ThemeModeController extends _$ThemeModeController {
  ThemeMode build() {
    return ThemeMode.light;
  }

  void change() {
    state == ThemeMode.light ? state = ThemeMode.dark : state = ThemeMode.light;
  }
}
