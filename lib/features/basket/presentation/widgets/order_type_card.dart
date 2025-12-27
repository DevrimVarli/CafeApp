import 'package:cafe_app/features/basket/presentation/widgets/mini_indicator.dart';
import 'package:cafe_app/features/basket/presentation/widgets/order_type_selector.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderTypeCard extends StatelessWidget {
  const OrderTypeCard({
    super.key,
    required this.selectedIndex,
    required this.onTypeChanged,
  });

  final int selectedIndex;
  final ValueChanged<int> onTypeChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'order_type'.tr(),
                style: GoogleFonts.sora(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  color: Colors.black.withValues(alpha: 0.75),
                ),
              ),
              const Spacer(),
              MiniIndicator(activeIndex: selectedIndex),
            ],
          ),
          const SizedBox(height: 10),
          OrderTypeSelector(
            selectedIndex: selectedIndex,
            onTypeChanged: onTypeChanged,
          ),
        ],
      ),
    );
  }
}
