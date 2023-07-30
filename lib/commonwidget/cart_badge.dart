import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/cartpage/cartcontroller.dart';
import 'package:fresh_fruit/Screens/cartpage/cartscreen.dart';
import 'package:get/get.dart';

Widget badgeValue = GetBuilder<CartController>(
  id: "cart",
  builder: (controller) => Badge(
    label: Badge.count(count: controller.totalItem),
    isLabelVisible: true,
    alignment: Alignment.topRight,
    child: IconButton(
      onPressed: () => Get.to(() => const CartScreen()),
      icon: const Icon(
        Icons.shopping_cart,
        size: 40,
        color: Colors.white,
      ),
    ),
  ),
);
