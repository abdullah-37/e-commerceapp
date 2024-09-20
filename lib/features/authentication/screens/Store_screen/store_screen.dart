import 'package:e_commerce_app/features/authentication/screens/Store_screen/customwidgeets/custom_widgets.dart';
import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/appbar.dart';
import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/home_custom_widgets.dart';
import 'package:e_commerce_app/features/authentication/screens/home_screen/home_screen.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helprs/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var imglist = [
      'assets/images/products/iphone_12_black.png',
      'assets/images/products/kitchen_counter.png',
      'assets/images/products/leather_jacket_1.png',
      'assets/images/products/NikeAirJOrdonBlackRed.png',
      'assets/images/products/product-jeans.png',
      'assets/images/products/iphone_12_black.png',
      'assets/images/products/kitchen_counter.png',
      'assets/images/products/leather_jacket_1.png',
      'assets/images/products/NikeAirJOrdonBlackRed.png',
      'assets/images/products/product-jeans.png',
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: const MyAppBar(
            title: Text(
              'Store',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [AppbarIconwithReddot(icon: Icon(Iconsax.shopping_bag))],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxisScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 450,
                  pinned: true,
                  floating: true,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(MySizes.defaultspace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(height: 20),
                        //Search Bar
                        const MySearchbar(),

                        const SizedBox(height: 20),

                        // Featured brand heading
                        ProductHeading(
                          title: 'Featured Brands',
                          color: MyHelperfunctions.isDarkmode(context)
                              ? Colors.white
                              : Colors.black,
                        ),

                        // Featured brand grids
                        GridFeaturedBrands(imglist: imglist)
                      ],
                    ),
                  ),
                  bottom: const TabBar(
                    indicatorColor: Colors.blue,
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    tabs: [
                      Tab(child: Text('Sport')),
                      Tab(child: Text('Cloths')),
                      Tab(child: Text('Electronis')),
                    ],
                  ),
                )
              ];
            },
            body: TabBarView(
              // dragStartBehavior: DragStartBehavior.down,
              // physics: NeverScrollableScrollPhysics(),
              children: [
                SIngleTabScreen(imglist: imglist),
                const Text('Cloths'),
                const Text('Electronics'),
              ],
            ),
          )),
    );
  }
}

class SIngleTabScreen extends StatelessWidget {
  const SIngleTabScreen({
    super.key,
    required this.imglist,
  });

  final List<String> imglist;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const FeaturedBrandContainer(
                img: 'assets/images/products/NikeAirJOrdonBlackRed.png'),
            const SizedBox(height: 10),
            const FeaturedBrandContainer(
                img: 'assets/images/products/NikeAirJOrdonBlackRed.png'),
            const SizedBox(height: 10),
            const Align(
                alignment: AlignmentDirectional.topStart,
                child: Text('You Might also like')),
            const SizedBox(height: 10),
            ProductsGridLayout(imglist: imglist)
          ],
        ),
      ),
    ]);
  }
}
