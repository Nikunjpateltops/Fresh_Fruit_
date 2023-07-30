import 'package:flutter/material.dart';
import 'package:fresh_fruit/Screens/cartpage/cartcontroller.dart';
import 'package:get/get.dart';
import '../../commonwidget/snackbar.dart';

//----------------Cart AppBar--------------//
AppBar cartAppbar() {
  return AppBar(
    title: const Text("Cart Screen",
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
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 35,
            color: Colors.white,
          )),
    ),
  );
}

//-------------Cart Container------------//

Widget cartContainer() {
  return Container(
    //  margin: EdgeInsets.only(top: Get.height * 0.53),
    height: Get.height * 0.35,
    decoration: BoxDecoration(
        color: Colors.deepPurple.shade400,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: paymentDetail(),
        ),
        Padding(
          padding: const EdgeInsets.all(28),
          child: checkOutBtn(),
        )
      ],
    ),
  );
}

//-----------------payment details Text--------------//

Widget paymentDetail() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Sub Total",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  wordSpacing: 0,
                  fontFamily: 'PatrickHand',
                  fontSize: 35,
                  fontWeight: FontWeight.w700)),
          GetBuilder<CartController>(
            id: "subTotal",
            builder: (controller) => Text("${controller.subtotal}",
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.white,
                    wordSpacing: 3,
                    fontFamily: 'PatrickHand',
                    fontSize: 35,
                    fontWeight: FontWeight.w700)),
          )
        ],
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Delivery Fee",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  wordSpacing: 0,
                  fontFamily: 'PatrickHand',
                  fontSize: 35,
                  fontWeight: FontWeight.w700)),
          Text("20.0",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  wordSpacing: 3,
                  fontFamily: 'PatrickHand',
                  fontSize: 35,
                  fontWeight: FontWeight.w700))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Total Amount",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  wordSpacing: 0,
                  fontFamily: 'PatrickHand',
                  fontSize: 35,
                  fontWeight: FontWeight.w700)),
          GetBuilder<CartController>(
            id: "TotalAmountShow",
            builder: (controller) => Text("${controller.totalAmount}",
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.white,
                    wordSpacing: 3,
                    fontFamily: 'PatrickHand',
                    fontSize: 35,
                    fontWeight: FontWeight.w700)),
          )
        ],
      )
    ],
  );
}

//-------------------------checkout button-----------------//

Widget checkOutBtn() {
  return SizedBox(
    height: Get.height * 0.08,
    width: Get.width,
    child: ElevatedButton(
      style:
          ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple.shade200),
      onPressed: () {
        checkOutSnackbar();
      },
      child: const Text('Continue To CheckOut',
          style: TextStyle(fontFamily: 'PatrickHand', fontSize: 36)),
    ),
  );
}

//--------------fruit order cart----------------------//
Widget cartListTile(
    {required String imagePath,
    required String fruitName,
    required int fruitPrice,
    required int index}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 110,
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
                    SizedBox(
                      width: Get.width * 0.33,
                      child: Center(
                        child: Text(fruitName,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.black,
                                wordSpacing: 3,
                                overflow: TextOverflow.ellipsis,
                                fontFamily: 'PatrickHand',
                                fontSize: 35,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GetBuilder<CartController>(
                      id: "removeProduct",
                      builder: (controller) => FloatingActionButton.small(
                        heroTag: UniqueKey(),
                        backgroundColor: Colors.deepPurple,
                        onPressed: () => controller.onTapRemoveProduct(index),
                        child: const Icon(Icons.exposure_minus_1),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GetBuilder<CartController>(
                      id: "cart",
                      builder: (controller) => Text(
                          controller.totalProduct[index].toString(),
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.black,
                              wordSpacing: 3,
                              fontFamily: 'PatrickHand',
                              fontSize: 35,
                              fontWeight: FontWeight.w700)),
                    ),
                    const SizedBox(width: 10),
                    GetBuilder<CartController>(
                      id: "addProduct",
                      builder: (controller) => FloatingActionButton.small(
                        heroTag: UniqueKey(),
                        backgroundColor: Colors.deepPurple,
                        child: const Icon(Icons.plus_one),
                        onPressed: () => controller.onTapAddProduct(index),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
