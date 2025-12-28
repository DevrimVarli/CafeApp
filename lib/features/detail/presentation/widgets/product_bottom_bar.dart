
import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/features/detail/controller/coffie_count_controller.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:cafe_app/features/home/domain/coffie_size_model.dart';
import 'package:cafe_app/utils/currency_format_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce/hive.dart';

class ProductBottomBar extends ConsumerWidget {
  const ProductBottomBar({
    super.key,
    required this.coffieModel,
    required this.selectedSizeIndex,
  });

  final CoffieModel coffieModel;
  final int selectedSizeIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(coffieCountControllerProvider);
    Box<BasketCoffieModel> coffieBox = Hive.box<BasketCoffieModel>('sepet');

    num currentPrice = coffieModel.sizes.isNotEmpty
        ? coffieModel.sizes[selectedSizeIndex].price * counter
        : 0.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'price'.tr(),
                style: GoogleFonts.sora(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                currentPrice.toPrice,
                style: GoogleFonts.sora(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryOrange,
                ),
              ),
            ],
          ),
          const SizedBox(width: 40),
          Expanded(
            child: ElevatedButton(
              onPressed: () => _handleBuyNow(context, counter, coffieBox),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryOrange,
                foregroundColor: Colors.white,
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                'buy_now'.tr(),
                style: GoogleFonts.sora(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleBuyNow(
    BuildContext context,
    int counter,
    Box<BasketCoffieModel> coffieBox,
  ) {
    if (counter == 0) {
      _showWarningSnackBar(context);
    } else if (coffieModel.sizes.isNotEmpty) {
      _addToBasket(context, counter, coffieBox);
    }
  }

  void _addToBasket(
    BuildContext context,
    int counter,
    Box<BasketCoffieModel> coffieBox,
  ) {
    CoffieSizeModel currentSize = coffieModel.sizes[selectedSizeIndex];
    String uniqueKey = '${coffieModel.id}_${currentSize.size}';
    if (coffieBox.containsKey(uniqueKey)) {
      BasketCoffieModel existingItem = coffieBox.get(uniqueKey)!;
      coffieBox.put(
        uniqueKey,
        BasketCoffieModel(
          coffieModel: coffieModel,
          count: counter + existingItem.count,
          selectedSize: currentSize,
        ),
      );
    } else {
      coffieBox.put(
        uniqueKey,
        BasketCoffieModel(
          coffieModel: coffieModel,
          count: counter,
          selectedSize: currentSize,
        ),
      );
    }

    if (context.mounted) context.pop();
  }

  void _showWarningSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.fromLTRB(16, 0, 16, 20),
          content: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.15),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withValues(alpha: 0.15),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.remove_circle_outline,
                    color: Colors.redAccent,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'select_at_least_one'.tr(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
