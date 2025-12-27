import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasketItemCard extends StatelessWidget {
  const BasketItemCard({
    super.key,
    required this.item,
    required this.onIncrement,
    required this.onDecrement,
  });
  final BasketCoffieModel item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            item.coffieModel.image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            errorBuilder: (BuildContext ctx, Object err, StackTrace? stack) =>
                Container(width: 60, height: 60, color: Colors.grey.shade300),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item.coffieModel.name,
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'size_value'.tr(args: <String>[item.selectedSize.size]),
                style: GoogleFonts.sora(
                  fontSize: 12,
                  color: AppColors.textLight,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            _CircleBtn(icon: Icons.remove, onTap: onDecrement),
            SizedBox(
              width: 30,
              child: Center(
                child: Text(
                  item.count.toString(),
                  style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            _CircleBtn(icon: Icons.add, onTap: onIncrement),
          ],
        ),
      ],
    );
  }
}

class _CircleBtn extends StatelessWidget {
  const _CircleBtn({required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white,
        ),
        child: Icon(icon, size: 16, color: AppColors.textDark),
      ),
    );
  }
}
