import 'package:cafe_app/features/stores/domain/daily_hours_model.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';

class DayRow extends StatelessWidget {
  const DayRow({
    super.key,
    required this.day,
    required this.hours,
    this.isLast = false,
  });
  final String day;
  final DailyHoursModel hours;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    bool isWeekend = day == 'saturday' || day == 'sunday';

    String open = hours.open.trim();
    String close = hours.close.trim();
    bool isClosed =
        open.isEmpty || close.isEmpty || open.toLowerCase() == 'closed';

    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            day.tr(), 
            style: TextStyle(
              color: isWeekend
                  ? const Color(0xFF4E342E)
                  : Colors.black.withValues(alpha: 0.55),
              fontWeight: isWeekend ? FontWeight.w900 : FontWeight.w700,
              fontSize: 13,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black.withValues(alpha: 0.06)),
            ),
            child: Text(
              isClosed
                  ? 'closed_text'
                        .tr() // "Kapalı"
                  : '$open - $close',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: isClosed
                    ? Colors.redAccent
                    : Colors.black.withValues(alpha: 0.78),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
