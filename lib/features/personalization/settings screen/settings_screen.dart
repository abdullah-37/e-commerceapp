import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/appbar.dart';
import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/home_custom_widgets.dart';
import 'package:e_commerce_app/features/personalization/profile%20screen/profile_screen.dart';
import 'package:e_commerce_app/features/personalization/settings%20screen/custom%20widgets/custom_widgets.dart';
import 'package:e_commerce_app/features/personalization/settings%20screen/switch_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkcontroller = Get.put(DarkSwitchController());
    final locationcontroller = Get.put(LocationSwitchController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomCurvedEdges(),
              child: Container(
                color: Colors.blue,
                // height: 200,
                child: Column(
                  children: [
                    const MyAppBar(
                      title: Text(
                        'Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      leading: const Image(
                          image: AssetImage('assets/logos/user.png')),
                      title: const Text(
                        'Mhammad Abdullah',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: const Text(
                        'abdullah@gmail.com',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(
                        onPressed: () => Get.to(() => const ProfileScreen()),
                        icon: const Icon(
                          Iconsax.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25)
                    // User Account Tile
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Account Settings
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Account Settings',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // Settings tiles
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  AccountSettingTile(
                      leadingicon: Icon(
                        Iconsax.home,
                        color: Colors.blue,
                      ),
                      title: 'My Address',
                      subtitle: 'Set delivery address'),
                  AccountSettingTile(
                      leadingicon: Icon(
                        Iconsax.shopping_cart,
                        color: Colors.blue,
                      ),
                      title: 'My Cart',
                      subtitle: 'Add and remove products from your cart'),
                  AccountSettingTile(
                      leadingicon: Icon(
                        Iconsax.bag,
                        color: Colors.blue,
                      ),
                      title: 'My Orders',
                      subtitle: 'All the products you order'),
                  AccountSettingTile(
                      leadingicon: Icon(
                        Iconsax.bank,
                        color: Colors.blue,
                      ),
                      title: 'My Bank Account',
                      subtitle: 'Details of your bank account'),
                  AccountSettingTile(
                      leadingicon: Icon(
                        Iconsax.notification,
                        color: Colors.blue,
                      ),
                      title: 'Notifications',
                      subtitle: 'your app related notifications'),
                  AccountSettingTile(
                      leadingicon: Icon(
                        Iconsax.tick_circle,
                        color: Colors.blue,
                      ),
                      title: 'Account Privacy',
                      subtitle: 'Selec the privacy options of your account'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'App Settings',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    AccountSettingTile(
                      leadingicon: const Icon(
                        Iconsax.location,
                        color: Colors.blue,
                      ),
                      title: 'Location',
                      subtitle: 'Turn on your location',
                      trailing: Switch(
                        value: locationcontroller.ison.value,
                        onChanged: (value) =>
                            locationcontroller.changeswitch(value),
                        inactiveThumbColor: Colors.white,
                        activeColor: Colors.white,
                        activeTrackColor:
                            const Color.fromARGB(255, 27, 144, 239),
                      ),
                    ),
                    Obx(
                      () => AccountSettingTile(
                        leadingicon: const Icon(
                          Iconsax.moon,
                          color: Colors.blue,
                        ),
                        title: 'Dark Mode',
                        subtitle: 'App will turn in dark mode',
                        trailing: Switch(
                          inactiveThumbColor: Colors.white,
                          activeColor: Colors.white,
                          activeTrackColor:
                              const Color.fromARGB(255, 27, 144, 239),
                          value: darkcontroller.ison.value,
                          onChanged: (value) =>
                              darkcontroller.changeswitch(value),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
