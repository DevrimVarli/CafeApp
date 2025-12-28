// Tema renkleri için FlexColorScheme kullanımı
// Light ve Dark mode için ayrı renk setleri tanımlanıyor.

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// Light Mode renkleri
const FlexSchemeColor myLightColors = FlexSchemeColor(
  primary: Color(0xFFC67C4E),
  primaryContainer: Color(0xFFC67C4E),
  secondary: Color(0xFF111111),
  secondaryContainer: Color(0xFF111111),
  tertiary: Color(0xFF9B9B9B),
  tertiaryContainer: Color(0xFF9B9B9B),
);

const FlexSchemeColor myDarkColors = FlexSchemeColor(
  primary: Color(0xFFD08B5B),
  primaryContainer: Color(0xFF8B5A3C),
  secondary: Color(0xFFF5F5F5),
  secondaryContainer: Color(0xFF2A2A2A),
  tertiary: Color(0xFFB3B3B3),
  tertiaryContainer: Color(0xFF3A3A3A),
);
