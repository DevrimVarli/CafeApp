import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/adress/controller/selected_addres_type.dart';
import 'package:easy_localization/easy_localization.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderCard extends ConsumerWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int addressType = ref.watch(selectedAddresTypeProvider);
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'address_type'.tr(),  
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w900,
                color: Colors.black87,
                fontSize: 13,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: _TypeChip(
                  text: 'home'.tr(), 
                  icon: Icons.home_rounded,
                  selected: addressType == 0,
                  onTap: () =>
                      ref.read(selectedAddresTypeProvider.notifier).change(0),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _TypeChip(
                  text: 'work'.tr(), 
                  icon: Icons.work_rounded,
                  selected: addressType == 1,
                  onTap: () =>
                      ref.read(selectedAddresTypeProvider.notifier).change(1),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _TypeChip(
                  text: 'other'.tr(), 
                  icon: Icons.grid_view_rounded,
                  selected: addressType == 2,
                  onTap: () =>
                      ref.read(selectedAddresTypeProvider.notifier).change(2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TypeChip extends StatelessWidget {
  const _TypeChip({
    required this.text,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  final String text;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            color: selected ? AppColors.primaryOrange : const Color(0xFFF4F4F6),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: selected
                  ? AppColors.primaryOrange.withValues(alpha: 0.35)
                  : Colors.black.withValues(alpha: 0.06),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 18,
                color: selected ? Colors.white : Colors.black87,
              ),
              const SizedBox(width: 8),
              Text(
                text,
                style: GoogleFonts.sora(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w900,
                  color: selected ? Colors.white : Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
