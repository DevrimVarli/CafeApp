import 'package:cafe_app/common/controller/selected_page_index.dart';
import 'package:cafe_app/features/account/presentation/account_screen.dart';
import 'package:cafe_app/features/basket/presentation/basket_screen.dart';
import 'package:cafe_app/features/favorite/presentation/favorite_screen.dart';
import 'package:cafe_app/features/home/presentation/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomAppNavigationBar extends ConsumerStatefulWidget {
  const BottomAppNavigationBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomAppNavigationBarState();
}

class _BottomAppNavigationBarState
    extends ConsumerState<BottomAppNavigationBar> {
  /// Alt menüdeki sayfaların listesi
  final List<Widget> sayfaListesi = <Widget>[
    const HomeScreen(), // Home
    const FavoriteScreen(), // Search / Account
    const BasketScreen(), // Favorites
    const AccountScreen(), // Profile
  ];

  @override
  Widget build(BuildContext context) {
    int selectedIndex = ref.watch(selectedPageIndexProvider);
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      /// Seçilen sekmeye karşılık gelen ekran
      body: sayfaListesi[selectedIndex],

      /// Alt menü
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(32),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: colorScheme.shadow.withValues(alpha: 0.1),
                blurRadius: 12,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: (int index) {
              ref.read(selectedPageIndexProvider.notifier).changeIndex(index);
            },
            selectedItemColor: HexColor('#C67C4E'),
            unselectedItemColor: colorScheme.outlineVariant,
            backgroundColor: colorScheme.surface,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: const Icon(Icons.home), label:'nav_home'.tr()),
               BottomNavigationBarItem(
                icon: const Icon(Icons.favorite_border),
                label: 'nav_favorites'.tr(),
              ),
               BottomNavigationBarItem(
                icon: const Icon(Icons.shopping_basket),
                label: 'nav_basket'.tr(),
              ),
               BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: 'nav_profile'.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
