import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/cartpage/cartcontroller.dart';
import 'package:fresh_fruit/Screens/cartpage/cartwidget.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return Scaffold(
      appBar: cartAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<CartController>(
            id: "cart",
            builder: (controller) => Expanded(
              child: ListView.builder(
                itemCount: controller.cartList.length,
                itemBuilder: (context, index) {
                  return cartListTile(
                    imagePath: controller.cartList[index].assetImage,
                    fruitName: controller.cartList[index].text,
                    fruitPrice: controller.cartList[index].price,
                    index: index,
                  );
                },
              ),
            ),
          ),
          cartContainer(),
        ],
      ),
    );
  }
}
