import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/appbar.dart';
import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/home_custom_widgets.dart';
import 'package:e_commerce_app/features/authentication/screens/product%20detail%20screen/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          // header
          Stack(
            children: [
              Container(
                height: 320,
                color: const Color.fromARGB(255, 222, 222, 222),
              ),
              const Center(
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/images/products/NikeAirJordonwhiteMagenta.png')),
              ),
              const MyAppBar(),
              const HeartIcon(),
              // Images Slider
              const ProductScroll()
            ],
          ),
          // Meta data
          const Text('iffjfejfwcnclnccdlnv3n')
        ],
      ),
    );
  }
}
