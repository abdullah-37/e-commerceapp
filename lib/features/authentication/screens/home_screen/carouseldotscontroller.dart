import 'package:get/get.dart';

class Carouseldotscontroller extends GetxController {
  static Carouseldotscontroller get instance => Get.find();

  final carouselcurrentindex = 0.obs;

  void updatepageindicator(index) {
    carouselcurrentindex.value = index;
  }
}
