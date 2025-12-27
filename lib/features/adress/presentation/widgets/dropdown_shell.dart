import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownShell extends StatelessWidget {
  const DropdownShell({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.icon,
    required this.onChanged,
  });

  final String label;
  final String? value;
  final List<String> items;
  final IconData icon;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: GoogleFonts.sora(
            fontSize: 12,
            fontWeight: FontWeight.w800,
            color: Colors.black.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 54,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFF4F4F6),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black.withValues(alpha: 0.06)),
          ),
          child: Row(
            children: <Widget>[
              Icon(icon, color: Colors.black.withValues(alpha: 0.55), size: 20),
              const SizedBox(width: 10),
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: value,
                    hint: Text(
                      'select'.tr(),
                      style: GoogleFonts.sora(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withValues(alpha: 0.35),
                      ),
                    ),
                    items: items
                        .map(
                          (String e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(
                              e,
                              style: GoogleFonts.sora(
                                fontSize: 13.4,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: items.isEmpty ? null : onChanged,
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.black.withValues(alpha: 0.45),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
