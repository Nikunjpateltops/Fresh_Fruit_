import 'package:flutter/material.dart';

Widget likeIcon(bool isLike) {
  return isLike
      ? const Icon(Icons.shopping_basket)
      : const Icon(Icons.shopping_cart);
}
