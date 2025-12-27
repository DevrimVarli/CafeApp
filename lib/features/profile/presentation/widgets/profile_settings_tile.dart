import 'package:flutter/material.dart';

class ProfileSettingsTile extends StatelessWidget {
  const ProfileSettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.isLast,
    required this.primaryColor,
    required this.textColor,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final bool isLast;
  final Color primaryColor;
  final Color textColor;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: isLast
            ? const BorderRadius.vertical(bottom: Radius.circular(24))
            : const BorderRadius.vertical(top: Radius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: primaryColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(icon, color: primaryColor, size: 22),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: textColor,
                        ),
                      ),
                    ),
                    if (trailing != null) trailing!,
                  ],
                ),
              ),
              if (!isLast)
                Divider(
                  height: 1,
                  color: Colors.grey.withValues(alpha: 0.1),
                  indent: 60,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
