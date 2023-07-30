import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/cartpage/cartcontroller.dart';
import 'package:fresh_fruit/Screens/favoritepage/favoritescreen.dart';
import 'package:fresh_fruit/Screens/productpage/productcontroller.dart';
import 'package:fresh_fruit/commonwidget/cart_badge.dart';
import 'package:fresh_fruit/utils/storefruitdata.dart';
import 'package:get/get.dart';
import '../../commonwidget/snackbar.dart';
import '../../utils/strings.dart';
import '../cartpage/cartscreen.dart';

//-------------  App bar --------------//

AppBar productAppbar() {
  return AppBar(
    title: const Text(AppStrings.productAppbar,
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
    ],
  );
}

//------------- Product Page Body------------//

Widget productPageBody({required FruitModel item, required int index}) {
  return Stack(
    children: [
      downContainer(),
      middleContainer(item),
      Positioned(
          bottom: 320,
          left: 20,
          child: upContainer(
              assetImage: item.assetImage,
              text: item.text,
              price: item.price,
              index: index))
    ],
  );
}

//-------------- Down Container -----------------//

Widget downContainer() {
  return Container(
    color: Colors.deepPurple.shade400,
    child: Stack(
      children: [
        Positioned(
          bottom: 820,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 35,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                width: 210,
              ),
              Badge(
                child: IconButton(
                    onPressed: () {
                      Get.to(const FavoriteScreen());
                    },
                    alignment: Alignment.bottomRight,
                    icon: const Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                width: 20,
              ),
              badgeValue
            ],
          ),
        )
      ],
    ),
  );
}

// ------------------Middle Container -------------//

Widget middleContainer(FruitModel item) {
  return Container(
    margin: EdgeInsets.only(top: Get.height * 0.25),
    height: Get.height * 0.75,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
              "A Fruits increase the physical strength of our body and slow down our aging process.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'PatrickHand')),
        ),
        Padding(
          padding: const EdgeInsets.all(28),
          child: SizedBox(
            height: Get.height * 0.08,
            width: Get.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple.shade400),
              onPressed: () {
                Get.find<CartController>().onTapAddProductCartScreen(item);
                addToCart();
                Get.to(const CartScreen());
              },
              child: const Text('Add To Cart',
                  style: TextStyle(fontFamily: 'PatrickHand', fontSize: 36)),
            ),
          ),
        )
      ],
    ),
  );
}

//--------------Up Container --------------------//

Widget upContainer(
    {required String assetImage,
    required String text,
    required int price,
    required int index}) {
  return Center(
    child: Container(
        height: Get.height * 0.50,
        width: Get.width * 0.90,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(assetImage), fit: BoxFit.cover),
            color: Colors.deepPurple.shade300,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: GetBuilder<ProductController>(
                        id: "like",
                        builder: (controller) {
                          return IconButton(
                              onPressed: () {
                                controller.likeIcon(index);
                              },
                              alignment: Alignment.bottomRight,
                              icon: controller.isLike
                                  ? const Icon(
                                      Icons.favorite,
                                      size: 40,
                                      color: Colors.black,
                                    )
                                  : const Icon(
                                      Icons.favorite_border,
                                      size: 40,
                                      color: Colors.black,
                                    ));
                        },
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
                          children: [
                            Text(
                              text,
                              style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'PatrickHand',
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                "$price",
                                style: const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'PatrickHand',
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )),
  );
}

void test(void Function()? onPressed) {}
