import 'package:fresh_fruit/utils/storefruitdata.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProductController extends GetxController {
  bool isLike = false;

  List<FruitModel> likedProduct = [];

  void likeIcon(int index) {
    isLike = !isLike;
    if (isLike) {
      likedProduct.addAll([fruitData[index]]);
    } else {
      likedProduct.removeAt(index);
    }
    update(["like"]);
  }
}
