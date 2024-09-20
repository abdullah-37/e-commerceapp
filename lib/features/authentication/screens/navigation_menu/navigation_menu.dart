import 'package:e_commerce_app/features/authentication/screens/Store_screen/store_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/home_screen/home_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/wishlist%20screen/wishlistscreen.dart';
import 'package:e_commerce_app/features/personalization/settings%20screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          // backgroundColor: Colors.white,
          selectedIndex: controller.selectedindex.value,
          onDestinationSelected: (index) =>
              controller.selectedindex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedindex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedindex = 0.obs;
  final screens = [
    // Home Screem
    const HomeScreen(),
    // Shop Screen
    const StoreScreen(),
    // Wishlist Screen
    const WhishlistScreen(),
    // Profile Screeen
    const SettingScreen()
  ];
}
