// Tema renkleri için FlexColorScheme kullanımı
// Light ve Dark mode için ayrı renk setleri tanımlanıyor.

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// Light Mode renkleri
final FlexSchemeColor myLightColors = FlexSchemeColor(
  primary: HexColor('#C67C4E'), // Ana renk (mavi tonları)
  primaryContainer: const Color(0xFF90CAF9), // Açık mavi arka plan
  secondary: const Color(0xFF00ACC1), // İkincil renk (turkuaz)
  secondaryContainer: const Color(0xFFB2EBF2), // Açık turkuaz arka plan
  tertiary: Colors.green.shade500, // Ek renk (yeşil tonları)
  tertiaryContainer: const Color(0xFFB2EBF2), // Ek renk arka plan
);

/// Dark Mode renkleri
final FlexSchemeColor myDarkColors = FlexSchemeColor(
  primary: HexColor('#C67C4E'), // Ana renk (koyu mavi tonları)
  primaryContainer: const Color(0xFF5472D3), // Koyu mavi arka plan
  secondary: const Color(0xFF00838F), // İkincil renk (koyu turkuaz)
  secondaryContainer: const Color(0xFF4DD0E1), // Açık turkuaz
  tertiary: const Color(0xFF006064), // Ek renk (koyu petrol mavisi)
  tertiaryContainer: const Color(0xFF4DD0E1), // Ek renk arka plan
);
