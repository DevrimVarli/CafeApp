import 'package:easy_localization/easy_localization.dart';

String getAddressType(int value) {
  switch (value) {
    case 0:
      return 'home'.tr(); 
    case 1:
      return 'work'.tr(); 
    case 2:
      return 'other'.tr(); 
    default:
      return '';
  }
}
