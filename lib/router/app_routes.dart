import 'package:cafe_app/common/bottom_tab_shell_layout.dart';
import 'package:cafe_app/features/account/presentation/account_screen.dart';
import 'package:cafe_app/features/adress/domain/address_model.dart';
import 'package:cafe_app/features/adress/presentation/adress_change_screen.dart';
import 'package:cafe_app/features/adress/presentation/adress_screen.dart';
import 'package:cafe_app/features/basket/presentation/basket_screen.dart';
import 'package:cafe_app/features/favorite/presentation/favorite_screen.dart';
import 'package:cafe_app/features/home/presentation/home_screen.dart';
import 'package:cafe_app/features/intro/presentation/intro_screen.dart';
import 'package:cafe_app/features/stores/presentation/stores_screen.dart';
import 'package:cafe_app/router/app_router_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter appRoutes = GoRouter(
  initialLocation: AppRouterName.intro,
  routes: <RouteBase>[
    GoRoute(
      path: AppRouterName.intro,
      builder: (BuildContext context, GoRouterState state) {
        return const IntroScreen();
      },
    ),
    GoRoute(
      path: AppRouterName.change,
      builder: (BuildContext context, GoRouterState state) {
        return const AdressChangeScreen();
      },
    ),
    GoRoute(
      path: '/address',
      name: AppRouterName.address,
      builder: (BuildContext context, GoRouterState state) {
        AddressModel? address = state.extra as AddressModel?;
        return AddressScreen(address: address);
      },
    ),

    GoRoute(
      path: AppRouterName.stores,
      builder: (BuildContext context, GoRouterState state) {
        return const StoresScreen();
      },
    ),
     GoRoute(
      path: AppRouterName.profile,
      builder: (BuildContext context, GoRouterState state) {
        return const StoresScreen();
      },
    ),
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return BottomTabShellLayout(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: AppRouterName.home,
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
        ),
        GoRoute(
          path: AppRouterName.favorite,
          builder: (BuildContext context, GoRouterState state) {
            return const FavoriteScreen();
          },
        ),
        GoRoute(
          path: AppRouterName.basket,
          builder: (BuildContext context, GoRouterState state) {
            return const BasketScreen(); // sanırım burası ileride profil olacak :)
          },
        ),
        GoRoute(
          path: AppRouterName.account,
          builder: (BuildContext context, GoRouterState state) {
            return const AccountScreen(); // sanırım burası ileride profil olacak :)
          },
        ),
      ],
    ),
  ],
);
