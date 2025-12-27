import 'package:cafe_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      width: active ? 18 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: active
            ? AppColors.primaryOrange.withValues(alpha: 0.95)
            : Colors.black.withValues(alpha: 0.12),
      ),
    );
  }
}
