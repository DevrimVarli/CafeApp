import 'package:cafe_app/features/detail/controller/selected_size_index.dart';
import 'package:cafe_app/features/detail/presentation/widgets/detail_app_bar.dart';
import 'package:cafe_app/features/detail/presentation/widgets/product_bottom_bar.dart';
import 'package:cafe_app/features/detail/presentation/widgets/product_description.dart';
import 'package:cafe_app/features/detail/presentation/widgets/product_image.dart';
import 'package:cafe_app/features/detail/presentation/widgets/product_rating.dart';
import 'package:cafe_app/features/detail/presentation/widgets/product_title_and_tags.dart';
import 'package:cafe_app/features/detail/presentation/widgets/quantity_counter.dart';
import 'package:cafe_app/features/detail/presentation/widgets/size_selector.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends ConsumerStatefulWidget {
  const DetailScreen({super.key, required this.coffieModel});
  final CoffieModel coffieModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedSizeIndex = ref.watch(selectedSizeIndexProvider);
    int safeIndex = _selectedSizeIndex;
    if (widget.coffieModel.sizes.isEmpty ||
        safeIndex >= widget.coffieModel.sizes.length) {
      safeIndex = 0;
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: DetailAppBar(coffieModel: widget.coffieModel),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ProductImage(imageUrl: widget.coffieModel.image),
                  const SizedBox(height: 20),

                  ProductTitleAndTags(coffieModel: widget.coffieModel),
                  const SizedBox(height: 16),

                  ProductRating(rating: widget.coffieModel.rating),
                  const Divider(height: 32, thickness: 1),

                  ProductDescription(
                    description: widget.coffieModel.description,
                  ),
                  const SizedBox(height: 20),

                  Text(
                    'size'.tr(),
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizeSelector(
                    sizes: widget.coffieModel.sizes,
                    selectedIndex: safeIndex,
                    onSizeSelected: (int index) {
                      ref
                          .read(selectedSizeIndexProvider.notifier)
                          .changeIndex(index);
                    },
                  ),
                  const SizedBox(height: 20),

                  const QuantityCounter(),
                ],
              ),
            ),
          ),

          ProductBottomBar(
            coffieModel: widget.coffieModel,
            selectedSizeIndex: safeIndex,
          ),
        ],
      ),
    );
  }
}
