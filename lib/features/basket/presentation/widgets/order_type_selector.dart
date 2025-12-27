import 'package:cafe_app/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderTypeSelector extends StatelessWidget {

  const OrderTypeSelector({
    super.key,
    required this.selectedIndex,
    required this.onTypeChanged,
  });
  final int selectedIndex;
  final Function(int) onTypeChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: <Widget>[_buildButton('deliver'.tr(), 0), _buildButton('pick_up'.tr(), 1)],
      ),
    );
  }

  Widget _buildButton(String title, int index) {
    bool isSelected = selectedIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => onTypeChanged(index),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primaryOrange : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: GoogleFonts.sora(
              color: isSelected ? Colors.white : AppColors.textDark,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
