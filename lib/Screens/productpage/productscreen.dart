import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/productpage/productcontroller.dart';
import 'package:fresh_fruit/utils/storefruitdata.dart';
import 'package:get/get.dart';
import 'productwidget.dart';

class ProductScreen extends StatelessWidget {
  final int index;

  const ProductScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: productPageBody(item: fruitData[index], index: index),
    );
  }
}
