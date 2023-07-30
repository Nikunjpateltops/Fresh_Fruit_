import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/splashPage/splashcontroller.dart';
import 'package:get/get.dart';
import 'Screens/splashPage/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return GetMaterialApp(
      title: 'Fresh Fruit App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        //useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
