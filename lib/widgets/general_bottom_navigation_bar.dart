import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/utils/constants/colors.dart';

BottomNavigationBar generalBottomNavigationBar(
    BuildContext context, int currentIndex) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    elevation: 0,
    backgroundColor: Colors.white,
    selectedLabelStyle: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: AppColors.btnPrimary,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: AppColors.btnPrimary,
    ),
    selectedItemColor: AppColors.btnPrimary,
    unselectedItemColor: AppColors.btnPrimary,
    showUnselectedLabels: false,
    showSelectedLabels: true,
    onTap: (int index) {
      switch (index) {
        case 1:
          {
            context.goNamed('regions');
          }
          break;
        case 2:
          {
            context.goNamed('favorites');
          }
          break;
        case 3:
          {
            context.goNamed('account');
          }
          break;
        default:
          {
            context.goNamed('home');
          }
          break;
      }
    },
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icons/inactive_pokeball.png',
          width: 24.0,
          height: 24.0,
        ),
        activeIcon: Image.asset(
          'assets/icons/pokeball.png',
          width: 24.0,
          height: 24.0,
        ),
        label: "Pokedéx",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icons/inactive_pokepin.png',
          width: 24.0,
          height: 24.0,
        ),
        activeIcon: Image.asset(
          'assets/icons/pokepin.png',
          width: 24.0,
          height: 24.0,
        ),
        label: "Regions",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icons/inactive_pokeheart.png',
          width: 24.0,
          height: 24.0,
        ),
        activeIcon: Image.asset(
          'assets/icons/pokeheart.png',
          width: 24.0,
          height: 24.0,
        ),
        label: "Favorites",
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icons/inactive_pokeprofile.png',
          width: 24.0,
          height: 24.0,
        ),
        activeIcon: Image.asset(
          'assets/icons/pokeprofile.png',
          width: 24.0,
          height: 24.0,
        ),
        label: "Account",
      )
    ],
  );
}
