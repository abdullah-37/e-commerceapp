import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/home_custom_widgets.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var imglist = MyImages.imglist;
    return Scaffold(
      // appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Blue first Upper Container
            const HomeHeader(),
            // Body of Home Screen

            // Carousel slider
            const HomeCarouselSlider(),
            const SizedBox(height: 15),

            //products Grid View
            ProductsGridLayout(imglist: imglist),

            // ProductCardv(),
          ],
        ),
      ),
    );
  }
}

class ProductsGridLayout extends StatelessWidget {
  const ProductsGridLayout({
    super.key,
    required this.imglist,
  });

  final List<String> imglist;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // padding: const EdgeInsets.all(20),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: imglist.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
      itemBuilder: (_, index) => ProductCardv(
        image: imglist[index],
      ),
    );
  }
}
