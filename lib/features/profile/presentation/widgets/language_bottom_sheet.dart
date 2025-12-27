import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet {
  // Statik renk tanımı veya theme'den çekilebilir
  static const Color primaryOrange = Color(0xFFC67C4E);

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              _buildLanguageItem(context, 'tr', 'language_tr'.tr()),
              const SizedBox(height: 10),
              _buildLanguageItem(context, 'en', 'language_en'.tr()),
            ],
          ),
        );
      },
    );
  }

  static Widget _buildLanguageItem(
    BuildContext context,
    String languageCode,
    String displayName,
  ) {
    // Şu anki dil bu mu?
    bool isSelected = context.locale.languageCode == languageCode;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: isSelected ? primaryOrange.withOpacity(0.1) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? primaryOrange : Colors.grey.withOpacity(0.2),
        ),
      ),
      child: ListTile(
        onTap: () {
          // Dile tıklandığında o dile geçiş yap
          context.setLocale(Locale(languageCode));
          Navigator.pop(context);
        },
        leading: Text(
          languageCode == 'tr' ? '🇹🇷' : '🇬🇧',
          style: const TextStyle(fontSize: 24),
        ),
        title: Text(
          displayName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? primaryOrange : Colors.black87,
          ),
        ),
        trailing: isSelected
            ? const Icon(Icons.check_circle, color: primaryOrange)
            : null,
      ),
    );
  }
}