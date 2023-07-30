import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/splashPage/splashcontroller.dart';
import 'package:get/get.dart';
import 'splashWidget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      body: splashBody(),
    );
  }
}
