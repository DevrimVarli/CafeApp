import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/features/basket/presentation/widgets/basket_item_card.dart';
import 'package:cafe_app/features/basket/presentation/widgets/discount_banner.dart';
import 'package:cafe_app/features/basket/presentation/widgets/payment_summary_section.dart';
import 'package:cafe_app/features/basket/presentation/widgets/section_divider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/adapters.dart';

class BasketListView extends StatelessWidget {
  const BasketListView({super.key, required this.sepetBox});
  final Box<BasketCoffieModel> sepetBox;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<BasketCoffieModel>>(
      valueListenable: sepetBox.listenable(),
      builder: (BuildContext context, Box<BasketCoffieModel> box, _) {
        List<BasketCoffieModel> sepetList = box.values.toList();

        if (sepetList.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text('basket_empty'.tr(), style: GoogleFonts.sora()),
            ),
          );
        }

        return Column(
          children: <Widget>[
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: sepetList.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 16),
              itemBuilder: (BuildContext context, int index) {
                BasketCoffieModel item = sepetList[index];

                String uniqueKey =
                    '${item.coffieModel.id}_${item.selectedSize.size}';
                return BasketItemCard(
                  item: item,
                  onIncrement: () {
                    sepetBox.put(
                      uniqueKey,
                      BasketCoffieModel(
                        coffieModel: sepetList[index].coffieModel,
                        count: sepetList[index].count + 1,
                        selectedSize: sepetList[index].selectedSize,
                      ),
                    );
                  },
                  onDecrement: () {
                    if (sepetList[index].count > 1) {
                      sepetBox.put(
                        uniqueKey,
                        BasketCoffieModel(
                          coffieModel: sepetList[index].coffieModel,
                          count: sepetList[index].count - 1,
                          selectedSize: sepetList[index].selectedSize,
                        ),
                      );
                    } else {
                      sepetBox.delete(uniqueKey);
                    }
                  },
                );
              },
            ),
            const SectionDivider(),
            const DiscountBanner(),
            const SizedBox(height: 24),
            PaymentSummarySection(sepetBox: sepetBox),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
