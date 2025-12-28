import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/features/basket/presentation/widgets/basket_list_view.dart';
import 'package:cafe_app/features/basket/presentation/widgets/delivery_address_section.dart';
import 'package:cafe_app/features/basket/presentation/widgets/section_divider.dart';
import 'package:cafe_app/features/basket/presentation/widgets/sticky_order_bottom_bar.dart';
import 'package:cafe_app/utils/calculate_total_price.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/adapters.dart';

class DeliverContent extends StatelessWidget {
  const DeliverContent({super.key, required Box<BasketCoffieModel> sepetBox})
    : _sepetBox = sepetBox;

  final Box<BasketCoffieModel> _sepetBox;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 6, 16, 12),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 24,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: const DeliveryAddressSection(),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.fromLTRB(14, 8, 14, 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 24,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      const SectionDivider(),
                      const SizedBox(height: 6),
                      BasketListView(sepetBox: _sepetBox),
                    ],
                  ),
                ),
                const SizedBox(height: 92),
              ],
            ),
          ),
        ),
        ValueListenableBuilder<Box<BasketCoffieModel>>(
          valueListenable: _sepetBox.listenable(),
          builder: (BuildContext context, Box<BasketCoffieModel> box, _) {
            double totalNum = calculateTotalPrice(box);

            return SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: StickyOrderBottomBar(
                  totalPrice: totalNum,
                  onOrderTap: () {
                    if (box.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'basket_empty_warning'.tr(),
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      );
                      return;
                    }
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
