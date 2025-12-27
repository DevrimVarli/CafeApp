import 'package:cafe_app/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesEmpty extends StatelessWidget {
  const FavoritesEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 92,
              height: 92,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 24,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: const Icon(
                Icons.favorite_border,
                size: 44,
                color: AppColors.primaryOrange,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'no_favorites_yet'.tr(), // "Henüz Favorin Yok"
              style: GoogleFonts.sora(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'favorites_empty_subtitle'.tr(), // "Favori kahvelerin burada..."
              textAlign: TextAlign.center,
              style: GoogleFonts.sora(
                fontSize: 13,
                height: 1.35,
                color: Colors.black.withValues(alpha: 0.55),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
