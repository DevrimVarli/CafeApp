import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/adapters.dart';

class BasketAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasketAppBar({super.key, required this.sepetBox});

  final Box<BasketCoffieModel> sepetBox;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'order'.tr(),
        style: GoogleFonts.sora(
          color: Colors.black87,
          fontWeight: FontWeight.w900,
          fontSize: 18,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ValueListenableBuilder<Box<BasketCoffieModel>>(
            valueListenable: sepetBox.listenable(),
            builder: (_, Box<BasketCoffieModel> box, __) {
              int count = box.length;
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primaryOrange.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.shopping_bag_rounded,
                      size: 18,
                      color: AppColors.primaryOrange,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '$count',
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w900,
                        color: AppColors.primaryOrange,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
