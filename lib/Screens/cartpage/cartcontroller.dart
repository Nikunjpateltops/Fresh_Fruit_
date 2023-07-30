import 'package:fresh_fruit/utils/storefruitdata.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  int totalItem = 0;
  List<FruitModel> cartList = [];
  List<int> totalProduct = [];

  int totalAmount = 0;
  int subtotal = 0;

  void onTapAddProductCartScreen(FruitModel item) {
    cartList.add(item);
    totalProduct.add(0);
    totalItem = totalItem + 1;
    update(["cart"]);
    update(["subTotal"]);
  }

  void onTapAddProduct(int index) {
    totalProduct[index] = totalProduct[index] + 1;
    // subtotal = cartList[index].price * totalProduct[index];
    subTotal(index);
    update(["addProduct"]);
    update(["cart"]);
  }

  void onTapRemoveProduct(int index) {
    if (totalProduct[index] > 1) {
      totalProduct[index] = totalProduct[index] - 1;
      removeSubTotal(index);
      update(["removeProduct"]);
      update(["cart"]);
    } else {
      subtotal = 0;
      totalAmount = 0;
      totalItem = totalItem - 1;
      List<FruitModel> removeCart = [];
      removeCart.addAll(cartList);
      removeCart.removeAt(index);
      cartList = removeCart;
      List<int> removeItem = [];
      removeItem.addAll(totalProduct);
      removeItem.removeAt(index);
      totalProduct = removeItem;
      update(["subTotal"]);
      update(["cart"]);
      update(["removeProduct"]);
    }
  }

  void subTotal(int index) {
    subtotal = cartList[index].price * totalProduct[index];
    totalAmount = totalAmount + cartList[index].price * 1;
    update(["subTotal"]);
    update(["TotalAmountShow"]);
  }

  int removeSubtotal = 0;

  void removeSubTotal(int index) {
    removeSubtotal = cartList[index].price * 1;
    subtotal = subtotal - removeSubtotal;
    // if (subtotal == 0) {
    //   totalAmount = 0;
    // } else {
    // totalAmount = totalAmount - cartList[index].price * 1;
    // }
    totalAmount = totalAmount - cartList[index].price * 1;
    // if (cartList.isEmpty) {
    //   totalAmount = 0;
    // } else {
    //   totalAmount = totalAmount - cartList[index].price * 1;
    // }
    update(["subTotal"]);
    update(["TotalAmountShow"]);
  }
}
