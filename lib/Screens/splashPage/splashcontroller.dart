import 'dart:async';

import 'package:fresh_fruit/Screens/homePage/homescreen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //--------- OnInit Method -------//

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    navigationHome();
  }

  void navigationHome() {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.off(const HomeScreen());
      },
    );
  }
}
