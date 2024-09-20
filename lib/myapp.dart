import 'package:e_commerce_app/features/authentication/screens/onboarding_screens/onboarding_screen.dart';
import 'package:e_commerce_app/features/personalization/settings%20screen/switch_controller.dart';
import 'package:e_commerce_app/utils/themes/maintheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DarkSwitchController());
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // themeMode: ThemeMode.system,
        theme: controller.ison.value
            ? MyAppTheme.darktheme
            : MyAppTheme.lighttheme, //this is default light theme
        // darkTheme: MyAppTheme.darktheme,
        home:    const OnboardingScreen(),
        // home: const LoginScreen(),
        // home: const SignupScreen(),ss
        // home: const Emailverifyscreen(),
        // home: const HomeNavigation(),
        // home: const StoreScreen(),
        // home: const WhishlistScreen(),
        // home: const SettingScreen(),
        // home: const ProfileScreen(),
        // home:  const ProductDetailScreen(),
      ),
    );
  }
}
