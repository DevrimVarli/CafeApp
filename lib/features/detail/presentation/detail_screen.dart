import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/features/detail/controller/coffie_count_controller.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:cafe_app/features/home/domain/coffie_size_model.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/adapters.dart';

class DetailScreen extends ConsumerStatefulWidget {
  const DetailScreen({super.key, required this.coffieModel});
  final CoffieModel coffieModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen> {
  int _selectedSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    Box<BasketCoffieModel> coffieBox = Hive.box<BasketCoffieModel>('sepet');
    Box<CoffieModel> favoriCoffieBox = Hive.box<CoffieModel>('favoriler');
    int counter = ref.watch(coffieCountControllerProvider);
    Size size = MediaQuery.sizeOf(context);

    int safeIndex = _selectedSizeIndex;
    if (widget.coffieModel.sizes.isEmpty) {
      safeIndex = 0;
    } else if (safeIndex >= widget.coffieModel.sizes.length) {
      safeIndex = 0;
    }

    num currentPrice = widget.coffieModel.sizes.isNotEmpty
        ? widget.coffieModel.sizes[safeIndex].price * counter
        : 0.0;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'detail'.tr(), // "Detay"
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          ValueListenableBuilder(
            valueListenable: favoriCoffieBox.listenable(),
            builder:
                (BuildContext context, Box<CoffieModel> value, Widget? child) {
                  bool isFavori = value.containsKey(widget.coffieModel.id);
                  return IconButton(
                    onPressed: () {
                      if (isFavori) {
                        favoriCoffieBox.delete(widget.coffieModel.id);
                      } else {
                        favoriCoffieBox.put(
                          widget.coffieModel.id,
                          widget.coffieModel,
                        );
                      }
                    },
                    icon: isFavori
                        ? const Icon(Icons.favorite, color: Colors.red)
                        : const Icon(
                            Icons.favorite_outline_rounded,
                            color: Colors.black,
                          ),
                  );
                },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          // 1. KAYDIRILABİLİR İÇERİK ALANI
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Resim
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Hero(
                      tag: widget.coffieModel.image,
                      child: Image.network(
                        widget.coffieModel.image,
                        width: double.infinity,
                        height: size.height * 0.28,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => Container(
                          height: size.height * 0.28,
                          color: Colors.grey.shade300,
                          child: const Icon(
                            Icons.coffee,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Başlık
                  Text(
                    widget.coffieModel.name,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Taglar ve Özellikler
                  _buildTagsAndFeaturesRow(),

                  const SizedBox(height: 16),

                  // Rating Satırı
                  Row(
                    children: <Widget>[
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        '${widget.coffieModel.rating.average}',
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '(${widget.coffieModel.rating.count})',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                    ],
                  ),

                  const Divider(height: 32, thickness: 1),

                  // Açıklama
                  Text(
                    'description'.tr(), // "Açıklama"
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.coffieModel.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      height: 1.5,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 20),

                  // Size Seçimi
                  Text(
                    'size'.tr(), // "Boyut"
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Dinamik Size Selector
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(widget.coffieModel.sizes.length, (
                      int index,
                    ) {
                      CoffieSizeModel sizeItem =
                          widget.coffieModel.sizes[index];
                      // Görsel seçim kontrolünü de safeIndex ile yapıyoruz
                      // Böylece hata durumunda ilk eleman seçili görünür.
                      bool isSelected = safeIndex == index;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedSizeIndex = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: size.width * 0.28,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primaryOrange.withValues(alpha: 0.1)
                                : Colors.white,
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primaryOrange
                                  : Colors.grey.shade300,
                              width: isSelected ? 1.5 : 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            sizeItem.size,
                            style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: isSelected
                                  ? AppColors.primaryOrange
                                  : Colors.grey.shade600,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 20),

                  // Arttır / Azalt Butonları
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          ref
                              .read(coffieCountControllerProvider.notifier)
                              .decrement();
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: AppColors.primaryOrange,
                        ),
                      ),
                      Text(
                        counter.toString(),
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          ref
                              .read(coffieCountControllerProvider.notifier)
                              .increment();
                        },
                        icon: const Icon(
                          Icons.add,
                          color: AppColors.primaryOrange,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // 2. SABİT ALT FİYAT BLOĞU
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
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
                // Fiyat Bilgisi
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'price'.tr(), // "Fiyat"
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$ $currentPrice',
                      style: GoogleFonts.sora(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryOrange,
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 40),

                // Satın Al Butonu
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (counter == 0) {
                        ScaffoldMessengerState
                        messenger = ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              behavior: SnackBarBehavior.floating,
                              margin: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                              duration: const Duration(seconds: 2),
                              content: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 14,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.15,
                                      ),
                                      blurRadius: 20,
                                      offset: const Offset(0, 10),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent.withValues(
                                          alpha: 0.15,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.remove_circle_outline_rounded,
                                        color: Colors.redAccent,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Text(
                                        'select_at_least_one'
                                            .tr(), // "En az 1 adet seçmelisin"
                                        style: const TextStyle(
                                          fontSize: 14,
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
                      } else if (widget.coffieModel.sizes.isNotEmpty) {
                        coffieBox.put(
                          widget.coffieModel.id,
                          BasketCoffieModel(
                            coffieModel: widget.coffieModel,
                            count: counter,
                            selectedSize: widget.coffieModel.sizes[safeIndex],
                          ),
                        );
                        if (!context.mounted) return;
                        context.pop();
                      }
                    },
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
                      'buy_now'.tr(), // "Hemen Al"
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Tags ve Özellikler widget'ı
  Widget _buildTagsAndFeaturesRow() {
    return SizedBox(
      height: 30,
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: widget.coffieModel.tags.length,
              separatorBuilder: (_, __) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: Text(
                    '/',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
              ),
              itemBuilder: (BuildContext context, int index) {
                String tag = widget.coffieModel.tags[index];
                return Center(
                  child: Text(
                    tag.isNotEmpty
                        ? '${tag[0].toUpperCase()}${tag.substring(1)}'
                        : tag,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                );
              },
            ),
          ),
          // İkonlar
          Row(
            children:
                <IconData>[
                      Icons.delivery_dining,
                      Icons.coffee,
                      Icons.coffee_maker,
                    ]
                    .map(
                      (IconData icon) => Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            icon,
                            size: 16,
                            color: AppColors.primaryOrange,
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }
}
