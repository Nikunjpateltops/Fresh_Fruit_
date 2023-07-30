import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/cartpage/cartcontroller.dart';
import 'package:fresh_fruit/Screens/productpage/productscreen.dart';
import 'package:fresh_fruit/commonwidget/cart_badge.dart';
import 'package:fresh_fruit/utils/storefruitdata.dart';
import 'package:fresh_fruit/utils/strings.dart';
import 'package:get/get.dart';
import '../../commonwidget/snackbar.dart';

//--------------- Home AppBar---------------------//

AppBar homeAppbar() {
  return AppBar(
    title: const Text(AppStrings.homeAppbar,
        textAlign: TextAlign.left,
        style: TextStyle(
            wordSpacing: 3,
            fontFamily: 'PatrickHand',
            fontSize: 35,
            fontWeight: FontWeight.w700)),
    actions: [
      badgeValue,
      const SizedBox(
        width: 20,
      )
      // Badge(
      //   //label: HomeController.badgeValue,
      //   alignment: Alignment.topRight,
      //   child: IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.shopping_cart,
      //         size: 32,
      //       )),
      // )
    ],
  );
}

//---------Badge Value controller-----------//
// Widget badgeValue = GetBuilder<CartController>(
//   id: "cart",
//   builder: (controller) => Badge(
//     label: Badge.count(count: controller.totalCart),
//     isLabelVisible: true,
//     alignment: Alignment.topRight,
//     child: IconButton(
//       onPressed: ()=>Get.to(()=> const CartScreen()),
//       icon: const Icon(
//         Icons.shopping_cart,
//         size: 32,
//       ),
//     ),
//   ),
// );

//--------------  common card ------------------//
Widget commonCard({required FruitModel item, required int index}) {
  return GestureDetector(
    onTap: () {
      Get.to(ProductScreen(index: index));
    },
    child: Card(
      color: Colors.purpleAccent,
      child: Container(
        width: Get.width,
        height: Get.height,
        //   constraints: BoxConstraints.tight(Size.infinite),
        decoration: BoxDecoration(
            border: const Border(bottom: BorderSide(color: Colors.black)),
            // borderRadius: BorderRadius.all(Radius.circular(8)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(item.assetImage),
            )),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.image, size: 36),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item.text,
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'PatrickHand',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GetBuilder<CartController>(
                              id: "cart",
                              builder: (controller) =>
                                  commonButton(onPressed: () {
                                controller.onTapAddProductCartScreen(item);
                                addToCart();
                              }),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

// --------- common Elevated Button -----------//

Widget commonButton({required void Function()? onPressed}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shadowColor: Colors.purpleAccent,
      backgroundColor: Colors.deepPurple.withOpacity(0.6),
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
    ),
    onPressed: onPressed,
    child: const Text('Add To Cart'),
  );
}
