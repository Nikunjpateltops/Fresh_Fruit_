import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/cartpage/cartcontroller.dart';
import 'package:fresh_fruit/Screens/homePage/homecontroller.dart';
import 'package:get/get.dart';
import '../../utils/storefruitdata.dart';
import 'homewidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    Get.put(CartController());
    return Scaffold(
      appBar: homeAppbar(),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(5),
          reverse: false,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: fruitData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return commonCard(
              index: index,
              item: fruitData[index],
            );
          },
        ),
      ),
    );
  }
}

/*
GridView.builder(
        padding: const EdgeInsets.all(5),
        reverse: false,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return commonCard();
        },
      )
 */
