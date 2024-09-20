// App Bar

// Featured Brand single Container
import 'package:flutter/material.dart';

class FeaturedBrandContainer extends StatelessWidget {
  const FeaturedBrandContainer({
    super.key,
    required this.img,
  });
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.grey,
          )),
      child: Row(
        children: [
          // Image
          SizedBox(
            height: 60,
            width: 60,
            child: Image(image: AssetImage(img)),
          ),
          // Text Column
          const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Nike'),
            ],
          )
        ],
      ),
    );
  }
}

// Grid featured Brands
class GridFeaturedBrands extends StatelessWidget {
  const GridFeaturedBrands({
    super.key,
    required this.imglist,
  });

  final List<String> imglist;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 70,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (_, index) => FeaturedBrandContainer(
              img: imglist[index],
            ));
  }
}
