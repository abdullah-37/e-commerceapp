import 'package:get/get.dart';

class DarkSwitchController extends GetxController {
  Rx<bool> ison = false.obs;

  void changeswitch(bool value) {
    ison.value = value;
  }
}

class LocationSwitchController extends GetxController {
  Rx<bool> ison = false.obs;

  void changeswitch(bool value) {
    ison.value = value;
  }
}
