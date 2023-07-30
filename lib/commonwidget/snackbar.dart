import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController addToCart() {
  return Get.snackbar("Add Item", "Thank You !!",
      isDismissible: true,
      dismissDirection: DismissDirection.startToEnd,
      titleText: const Text("Add Item",
          style: TextStyle(
              fontFamily: 'PatrickHand',
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 30)),
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
      icon: const Icon(Icons.shopping_basket, size: 30, color: Colors.black),
      backgroundGradient: const LinearGradient(colors: [
        Colors.purple,
        Colors.deepPurple,
        Colors.white,
        Colors.purpleAccent
      ]));
}

SnackbarController checkOutSnackbar() {
  return Get.snackbar("Placed Order", "Thank You !!",
      isDismissible: true,
      dismissDirection: DismissDirection.startToEnd,
      titleText: const Text("Placed Order",
          style: TextStyle(
              fontFamily: 'PatrickHand',
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 30)),
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
      icon: const Icon(Icons.shopping_basket, size: 30, color: Colors.black),
      backgroundGradient: const LinearGradient(colors: [
        Colors.purple,
        Colors.deepPurple,
        Colors.white,
        Colors.purpleAccent
      ]));
}
