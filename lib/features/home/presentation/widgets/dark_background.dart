import 'package:cafe_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DarkBackground extends StatelessWidget {
  const DarkBackground({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.textDark),
    );
  }
}
