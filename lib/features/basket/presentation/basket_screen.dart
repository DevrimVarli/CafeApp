import 'package:cafe_app/features/basket/domain/basket_coffie_model.dart';
import 'package:cafe_app/features/basket/presentation/widgets/basket_app_bar.dart';
import 'package:cafe_app/features/basket/presentation/widgets/deliver_content.dart';
import 'package:cafe_app/features/basket/presentation/widgets/order_type_card.dart';
import 'package:cafe_app/features/basket/presentation/widgets/pick_up_content.dart';
import 'package:cafe_app/features/basket/presentation/widgets/soft_background_decor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';

class BasketScreen extends ConsumerStatefulWidget {
  const BasketScreen({super.key});

  @override
  ConsumerState<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends ConsumerState<BasketScreen> {
  late final PageController _pageController;
  int _selectedIndex = 0;
  late final Box<BasketCoffieModel> _sepetBox;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
    _sepetBox = Hive.box<BasketCoffieModel>('sepet');
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changeTab(int index) {
    if (index == _selectedIndex) return;

    setState(() => _selectedIndex = index);

    if (_pageController.hasClients) {
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F8),
      appBar: BasketAppBar(sepetBox: _sepetBox),
      body: Stack(
        children: <Widget>[
          const SoftBackgroundDecor(),
          Column(
            children: <Widget>[
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: OrderTypeCard(
                  selectedIndex: _selectedIndex,
                  onTypeChanged: _changeTab,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int index) =>
                      setState(() => _selectedIndex = index),
                  children: <Widget>[
                    DeliverContent(sepetBox: _sepetBox),
                    PickUpContent(sepetBox: _sepetBox),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
