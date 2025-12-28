import 'package:easy_localization/easy_localization.dart';

extension CurrencyFormat on num {
  String get toPrice {
    NumberFormat format = NumberFormat.currency(
      locale: 'tr_TR',
      symbol: 'TL',
      decimalDigits: 2,
      customPattern: '#,##0.00 \u00A4',
    );

    return format.format(this);
  }
}
