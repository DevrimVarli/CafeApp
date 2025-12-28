import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/home/domain/coffie_size_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({
    super.key,
    required this.sizes,
    required this.selectedIndex,
    required this.onSizeSelected,
  });

  final List<CoffieSizeModel> sizes;
  final int selectedIndex;
  final void Function(int) onSizeSelected;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List<Widget>.generate(sizes.length, (int index) {
        CoffieSizeModel sizeItem = sizes[index];
        bool isSelected = selectedIndex == index;

        return GestureDetector(
          onTap: () => onSizeSelected(index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: size.width * 0.28,
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.primaryOrange.withValues(alpha: 0.1)
                  : Colors.white,
              border: Border.all(
                color: isSelected
                    ? AppColors.primaryOrange
                    : Colors.grey.shade300,
                width: isSelected ? 1.5 : 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              sizeItem.size,
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected
                    ? AppColors.primaryOrange
                    : Colors.grey.shade600,
              ),
            ),
          ),
        );
      }),
    );
  }
}
