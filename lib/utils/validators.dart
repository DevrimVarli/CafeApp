import 'package:easy_localization/easy_localization.dart';

class AddressValidators {
  static String? title(String? v) {
    String t = (v ?? '').trim();
    if (t.isEmpty) return 'val_title_required'.tr(); // 'Adres başlığı gerekli'
    if (t.length < 2) return 'val_min_2_chars'.tr(); // 'En az 2 karakter'
    return null;
  }

  static String? fullName(String? v) {
    String t = (v ?? '').trim();
    if (t.isEmpty) return 'val_fullname_required'.tr(); // 'Ad soyad gerekli'
    return null;
  }

  static String? phone(String? v) {
    String t = (v ?? '').trim();
    if (t.isEmpty) return 'val_phone_required'.tr(); // 'Telefon gerekli'
    if (t.replaceAll(RegExp(r'\D'), '').length < 10) {
      return 'val_phone_invalid'.tr(); // 'Geçerli telefon gir'
    }
    return null;
  }

  static String? address(String? v) {
    String t = (v ?? '').trim();
    if (t.isEmpty) return 'val_address_required'.tr(); // 'Adres gerekli'
    if (t.length < 10) {
      return 'val_address_detail_warning'.tr(); // 'Biraz daha detay yaz'
    }
    return null;
  }

  static String? email(String? v) {
    String text = (v ?? '').trim();
    if (text.isEmpty) return 'val_email_required'.tr(); // 'Email boş olamaz'
    if (!text.contains('@')) {
      return 'val_email_invalid'.tr(); // 'Geçerli bir email gir'
    }
    return null;
  }

  static String? password(String? v) {
    String text = v ?? '';
    if (text.isEmpty) return 'val_password_required'.tr(); // 'Şifre boş olamaz'
    if (text.length < 6) {
      return 'val_password_min_6_chars'.tr(); // 'Şifre en az 6 karakter'
    }
    return null;
  }
}
