import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/appbar.dart';
import 'package:e_commerce_app/features/authentication/screens/home_screen/home_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WhishlistScreen extends StatelessWidget {
  const WhishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        title: Text('Wishlist', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [Icon(Iconsax.add)],
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
            child: ProductsGridLayout(imglist: MyImages.imglist)),
      ),
    );
  }
}
