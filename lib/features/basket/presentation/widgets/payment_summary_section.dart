import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/utils/calculate_total_price.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce/hive.dart';

class PaymentSummarySection extends StatefulWidget {
  const PaymentSummarySection({super.key, required this.sepetBox});
  final Box<BasketCoffieModel> sepetBox;

  @override
  State<PaymentSummarySection> createState() => _PaymentSummarySectionState();
}

class _PaymentSummarySectionState extends State<PaymentSummarySection> {
  List<BasketCoffieModel> get coffieList => widget.sepetBox.values.toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'payment_summary'.tr(), // "Ödeme Özeti"
          style: GoogleFonts.sora(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 12),

        if (coffieList.isEmpty)
          Text('basket_empty'.tr()) // "Sepet boş"
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: coffieList.length,
            itemBuilder: (BuildContext context, int index) {
              BasketCoffieModel coffie = coffieList[index];
              int price = coffie.selectedSize.price * coffie.count;

              return _buildRow(
                '${coffie.coffieModel.name} (x${coffie.count})',
                '\$ ${price.toStringAsFixed(2)}',
              );
            },
          ),

        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Divider(),
        ),

        _buildRow(
          'total_payment'.tr(), // "Toplam Ödeme"
          '\$ ${calculateTotalPrice(widget.sepetBox).toStringAsFixed(2)}',
          isTotal: true,
        ),
      ],
    );
  }

  Widget _buildRow(
    String title,
    String price, {
    bool isTotal = false,
    bool isStrike = false,
    String? strikeText,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.sora(
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.w400,
              color: AppColors.textDark,
            ),
          ),
          Row(
            children: <Widget>[
              if (isStrike && strikeText != null) ...<Widget>[
                Text(
                  strikeText,
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    decoration: TextDecoration.lineThrough,
                    color: AppColors.textLight,
                  ),
                ),
                const SizedBox(width: 8),
              ],
              Text(
                price,
                style: GoogleFonts.sora(
                  fontSize: isTotal ? 16 : 14,
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.w600,
                  color: AppColors.textDark,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
