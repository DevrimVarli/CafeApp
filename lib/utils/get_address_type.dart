import 'package:easy_localization/easy_localization.dart';

String getAddressType(int value) {
  switch (value) {
    case 0:
      return 'home'.tr(); // "Ev"
    case 1:
      return 'work'.tr(); // "İş"
    case 2:
      return 'other'.tr(); // "Diğer"
    default:
      return '';
  }
}
