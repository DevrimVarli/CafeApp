import 'package:cafe_app/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class StoresErrorState extends StatelessWidget {
  const StoresErrorState({
    super.key,
    required this.errorText,
    required this.onRetry,
  });

  final String errorText;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error_outline_rounded,
              size: 56,
              color: Colors.red.withValues(alpha: 0.75),
            ),
            const SizedBox(height: 12),
            Text(
              errorText,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryOrange,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: onRetry,
              child:  Text('try_again'.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
