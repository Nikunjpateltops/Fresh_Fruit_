import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/favoritepage/favoritecontroller.dart';
import 'package:get/get.dart';

//----------------Favorite AppBar--------------//

AppBar favoriteAppbar() {
  return AppBar(
    title: const Text("Favorite Fruit Screen",
        textAlign: TextAlign.left,
        style: TextStyle(
            wordSpacing: 3,
            fontFamily: 'PatrickHand',
            fontSize: 35,
            fontWeight: FontWeight.w700)),
    leading: Padding(
      padding: const EdgeInsets.all(12.0),
      child: IconButton(
          onPressed: () {
            Get.back();
            print("hello");
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 35,
            color: Colors.white,
          )),
    ),
  );
}

//--------------fruit liked list  cart----------------------//
Widget cartListTileForLikedFruit(
    {required String imagePath,
    required String fruitName,
    required int fruitPrice}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 110,
      width: 450,
      decoration: BoxDecoration(
          color: Colors.deepPurple.shade200,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.deepPurple,
                  backgroundImage: AssetImage(imagePath),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(fruitName,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black,
                            wordSpacing: 3,
                            fontFamily: 'PatrickHand',
                            fontSize: 35,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                Row(
                  children: [
                    Text("$fruitPrice",
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.black,
                            wordSpacing: 3,
                            fontFamily: 'PatrickHand',
                            fontSize: 35,
                            fontWeight: FontWeight.w700)),
                  ],
                )
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Icon(
                    Icons.favorite,
                    size: 40,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

/*

GetBuilder<FavoriteController>(
                    id: "FavItem",
                    builder: (controller) => IconButton(
                          onPressed: () {
                            controller.changeValue();
                          },
                          icon: controller.isLike
                              ?
                              const Icon(Icons.favorite_border, size: 40),
                        ))
 */
