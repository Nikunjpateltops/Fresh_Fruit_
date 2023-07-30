import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/favoritepage/favoritewidget.dart';
import 'package:fresh_fruit/Screens/productpage/productcontroller.dart';
import 'package:get/get.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductController());
    return Scaffold(
      appBar: favoriteAppbar(),
      body: SafeArea(
        child: GetBuilder<ProductController>(
          id: "like",
          builder: (controller) => ListView.builder(
            itemCount: controller.likedProduct.length,
            itemBuilder: (context, index) {
              return cartListTileForLikedFruit(
                  imagePath: controller.likedProduct[index].assetImage,
                  fruitName: controller.likedProduct[index].text,
                  fruitPrice: controller.likedProduct[index].price);
            },
          ),
        ),
      ),
    );
  }
}
