import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kulakin_construction/src/features/accounts/presentation/account_screen.dart';
import 'package:flutter_kulakin_construction/src/features/cart/presentation/cart/cart_screen.dart';
import 'package:flutter_kulakin_construction/src/features/pos/presentation/pos_screen.dart';
import 'package:flutter_kulakin_construction/src/features/products/presentation/market_screen.dart';

import '../features/home/presentation/home_screen.dart';
import '../shared/theme.dart';
import 'bloc/main_nav/main_nav_cubit.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  final List<IconData> bottomNavIcons = [
    Icons.home,
    Icons.shopping_cart,
    Icons.local_mall,
    Icons.sell,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: BlocBuilder<MainNavCubit, int>(
      //   builder: (context, state) {
      //     return FloatingActionButton(
      //       onPressed: () {
      //         context.read<MainNavCubit>().changePage(4);
      //       },
      //       backgroundColor: state == 4 ? orangeColor : greyColor,
      //       child: const Icon(
      //         Icons.store,
      //       ),
      //     );
      //   },
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: BlocBuilder<MainNavCubit, int>(
        builder: (context, state) {
          if (state == 0) {
            return const HomeScreen();
          } else if (state == 1) {
            return const MarketScreen();
          } else if (state == 2) {
            return const CartScreen();
          } else if (state == 3) {
            return const PosScreen();
          } else if (state == 4) {
            return const AccountScreen();
          } else {
            return const HomeScreen();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<MainNavCubit, int>(
        builder: (context, state) {
          return AnimatedBottomNavigationBar(
            icons: bottomNavIcons,
            activeIndex: state,
            onTap: (int index) {
              context.read<MainNavCubit>().changePage(index);
            },
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.softEdge,
            activeColor: orangeColor,
            inactiveColor: greyColor,
          );
        },
      ),
    );
  }
}
