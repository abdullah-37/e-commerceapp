import 'package:flutter/material.dart';

class ProductScroll extends StatelessWidget {
  const ProductScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 20,
      right: 0,
      child: SizedBox(
        height: 80,
        child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            separatorBuilder: (_, __) => const SizedBox(
                  width: 15,
                ),
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => const ScrollContainer()),
      ),
    );
  }
}

class ScrollContainer extends StatelessWidget {
  const ScrollContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 70,
      width: 80,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(14)),
      child: const Image(
          image: AssetImage(
              'assets/images/products/NikeAirJordonwhiteMagenta.png')),
    );
  }
}
