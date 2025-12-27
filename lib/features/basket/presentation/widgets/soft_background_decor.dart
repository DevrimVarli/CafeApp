import 'package:cafe_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SoftBackgroundDecor extends StatelessWidget {
  const SoftBackgroundDecor({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: IgnorePointer(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -80,
              right: -60,
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryOrange.withValues(alpha: 0.10),
                ),
              ),
            ),
            Positioned(
              bottom: -90,
              left: -70,
              child: Container(
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withValues(alpha: 0.03),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
