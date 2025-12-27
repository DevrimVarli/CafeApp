import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/stores/domain/stores_model.dart';
import 'package:cafe_app/features/stores/presentation/widgets/day_row.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ModernExpansionTile extends ConsumerStatefulWidget {
  const ModernExpansionTile({super.key, required this.store});
  final StoresModel store;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ModernExpansionTileState();
}

class _ModernExpansionTileState extends ConsumerState<ModernExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(height: 1, color: Colors.black.withValues(alpha: 0.06)),
        InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 14),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.access_time_rounded,
                  size: 18,
                  color: AppColors.primaryOrange.withValues(alpha: 0.75),
                ),
                const SizedBox(width: 8),
                Text(
                  'hours_and_contact'.tr(), // "Çalışma saatleri & iletişim"
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black.withValues(alpha: 0.70),
                    fontSize: 13.5,
                  ),
                ),
                const Spacer(),
                AnimatedRotation(
                  turns: _isExpanded ? 0.5 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.black.withValues(alpha: 0.45),
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedCrossFade(
          firstChild: const SizedBox.shrink(),
          secondChild: Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
              color: Color(0xFFFBFBFB),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black.withValues(alpha: 0.06),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.phone_rounded,
                        size: 18,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          widget.store.phone,
                          style: const TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                      Icon(
                        Icons.copy_rounded,
                        size: 18,
                        color: Colors.black.withValues(alpha: 0.45),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                // Günleri anahtar kelime (key) olarak gönderiyoruz,
                // DayRow içinde .tr() ile çevrilecekler.
                DayRow(day: 'monday', hours: widget.store.openingHours.mon),
                DayRow(day: 'tuesday', hours: widget.store.openingHours.tue),
                DayRow(day: 'wednesday', hours: widget.store.openingHours.wed),
                DayRow(day: 'thursday', hours: widget.store.openingHours.thu),
                DayRow(day: 'friday', hours: widget.store.openingHours.fri),
                DayRow(day: 'saturday', hours: widget.store.openingHours.sat),
                DayRow(
                  day: 'sunday',
                  hours: widget.store.openingHours.sun,
                  isLast: true,
                ),
              ],
            ),
          ),
          crossFadeState: !_isExpanded
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 240),
        ),
      ],
    );
  }
}
