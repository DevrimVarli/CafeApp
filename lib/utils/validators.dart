import 'package:easy_localization/easy_localization.dart';

class AddressValidators {
  static String? title(String? v) {
    String t = (v ?? '').trim();
    if (t.isEmpty) return 'val_title_required'.tr(); 
    if (t.length < 2) return 'val_min_2_chars'.tr(); 
    return null;
  }

  static String? fullName(String? v) {
    String t = (v ?? '').trim();
    if (t.isEmpty) return 'val_fullname_required'.tr(); 
    return null;
  }

  static String? phone(String? v) {
    String t = (v ?? '').trim();
    if (t.isEmpty) return 'val_phone_required'.tr(); 
    if (t.replaceAll(RegExp(r'\D'), '').length < 10) {
      return 'val_phone_invalid'.tr(); 
    }
    return null;
  }

  static String? address(String? v) {
    String t = (v ?? '').trim();
    if (t.isEmpty) return 'val_address_required'.tr(); 
    if (t.length < 10) {
      return 'val_address_detail_warning'.tr(); 
    }
    return null;
  }

  static String? email(String? v) {
    String text = (v ?? '').trim();
    if (text.isEmpty) return 'val_email_required'.tr(); 
    if (!text.contains('@')) {
      return 'val_email_invalid'.tr(); 
    }
    return null;
  }

  static String? password(String? v) {
    String text = v ?? '';
    if (text.isEmpty) return 'val_password_required'.tr(); 
    if (text.length < 6) {
      return 'val_password_min_6_chars'.tr(); 
    }
    return null;
  }
}
