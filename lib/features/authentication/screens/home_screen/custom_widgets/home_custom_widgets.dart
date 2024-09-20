import 'package:e_commerce_app/features/authentication/screens/home_screen/carouseldotscontroller.dart';
import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/appbar.dart';
import 'package:e_commerce_app/features/authentication/screens/product%20detail%20screen/product_detail_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helprs/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

// Custom Circle WIdget with opacity used in home Screen
class CircleWidget extends StatelessWidget {
  const CircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(400),
      ),
    );
  }
}

// Custom Widget for custom Shape curved edges

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstcurve = Offset(0, size.height - 20);
    final lastcurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstcurve.dx, firstcurve.dy, lastcurve.dx, lastcurve.dy);

    final secondfirstcurve = Offset(0, size.height - 20);
    final secondlastcurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondfirstcurve.dx, secondfirstcurve.dy,
        secondlastcurve.dx, secondlastcurve.dy);

    final thirdfirstcurve = Offset(size.width, size.height - 20);
    final thirdlastcurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdfirstcurve.dx, thirdfirstcurve.dy,
        thirdlastcurve.dx, thirdlastcurve.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

// Home Carousel Slider
class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Carouseldotscontroller());
    return Column(
      children: [
        SizedBox(
          height: 230,
          // width: 200,
          child: CarouselView(
            padding: const EdgeInsets.all(10),
            itemExtent: 420,
            itemSnapping: true, //slide only single container at a time
            shrinkExtent: 100,
            // controller: CarouselController(initialItem: 3),
            // padding: EdgeInsets.all(0),
            onTap: (index) => controller.updatepageindicator(index),
            children: const [
              HomeSlider(img: 'assets/images/banners/banner_1.jpg'),
              HomeSlider(img: 'assets/images/banners/banner_2.jpg'),
              HomeSlider(img: 'assets/images/banners/banner_3.jpg'),
              HomeSlider(img: 'assets/images/banners/banner_4.jpg'),
              HomeSlider(img: 'assets/images/banners/banner_5.jpg'),
              HomeSlider(img: 'assets/images/banners/banner_6.jpg'),
              HomeSlider(img: 'assets/images/banners/banner_7.jpg'),
              HomeSlider(img: 'assets/images/banners/banner_8.jpg'),
            ],
          ),
        ),
        const SizedBox(height: 10),

        // Navigation dots of carousel view
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 8; i++)
                Container(
                  height: 4,
                  width: 15,
                  color: controller.carouselcurrentindex == i
                      ? Colors.red
                      : Colors.grey,
                  margin: const EdgeInsets.only(right: 5),
                )
            ],
          ),
        ),
      ],
    );
  }
}

// Home Header

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: Container(
        color: const Color.fromARGB(255, 42, 110, 179),
        child: SizedBox(
          height: 300,
          child: Stack(
            children: [
              // Circle inside container with opacity
              const Positioned(top: -150, right: -150, child: CircleWidget()),
              const Positioned(top: 100, right: -100, child: CircleWidget()),
              // App Bar
              Column(
                children: [
                  // App bar
                  const MyAppBar(
                    title: AppBarColumnTexts(),
                    actions: [
                      AppbarIconwithReddot(icon: Icon(Iconsax.shopping_bag))
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Search Box
                  const MySearchbar(),
                  const SizedBox(height: 30),
                  // Popular Categories text

                  const ProductHeading(
                    title: 'Popular Categories',
                    color: Colors.white,
                  ),

                  // Category slider
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          final List catlist = [
                            'Shoes',
                            'Mobiles',
                            'Sports',
                            'Cosmatics',
                            'Cloths',
                            'Furniture',
                            'Toys',
                            'Food',
                            'Jewlary'
                          ];
                          final List catimges = [
                            MyImages.shoes,
                            MyImages.mobile,
                            MyImages.sport,
                            MyImages.cosmetics,
                            MyImages.cloths,
                            MyImages.furniture,
                            MyImages.toys,
                            MyImages.animal,
                            MyImages.jewlary
                          ];
                          return Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                padding: const EdgeInsets.all(10),
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: MyHelperfunctions.isDarkmode(context)
                                        ? Colors.black
                                        : Colors.white),
                                child: Center(
                                    child: Image(
                                  color: MyHelperfunctions.isDarkmode(context)
                                      ? Colors.white
                                      : Colors.black,
                                  image: AssetImage(catimges[index]),
                                  fit: BoxFit.fitHeight,
                                )),
                              ),
                              const SizedBox(height: 5),
                              // Names of Categories
                              SizedBox(
                                width: 90,
                                child: Center(
                                  child: Text(
                                    catlist[index],
                                    style: const TextStyle(color: Colors.white),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductHeading extends StatelessWidget {
  const ProductHeading({super.key, required this.title, required this.color});
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: color),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: TextStyle(color: color),
            ),
          )
        ],
      ),
    );
  }
}

// SLider Widget
class HomeSlider extends StatelessWidget {
  final String img;

  const HomeSlider({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        image: AssetImage(img),
        fit: BoxFit.fill,
      ),
    );
  }
}

// Search bAr
class MySearchbar extends StatelessWidget {
  const MySearchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = MyHelperfunctions.isDarkmode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        // height: 100,
        width: MyDevice.getScreenWidth(),
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: dark ? Colors.black : Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15))),

        child: Row(
          children: [
            Icon(
              Iconsax.search_normal,
              color:
                  dark ? Colors.white : const Color.fromARGB(255, 68, 68, 68),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Search in store',
              style: TextStyle(color: dark ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

// Product Card home screen

class ProductCardv extends StatelessWidget {
  const ProductCardv({super.key, required this.image});
  final dynamic image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    // image
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // yellow Discount indicator
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow),
                        child: const Text(
                          '25%',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ),
                    ),
                    // favourite heart button

                    const HeartIcon(),
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

// Heart Icon

class HeartIcon extends StatefulWidget {
  const HeartIcon({
    super.key,
  });

  @override
  State<HeartIcon> createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon> {
  bool fav = true;
  void favfunc() {
    setState(() {
      fav = !fav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 1,
        right: 5,
        child: IconButton(
          onPressed: favfunc,
          icon: Icon(
            Icons.favorite,
            color: fav ? Colors.white : Colors.red,
          ),
        ));
  }
}
