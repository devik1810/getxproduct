import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxproduct/home/product/view/product_data.dart';
import 'package:getxproduct/home/screen/view/home_screen.dart';

import 'home/cart/view/cart_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) => HomeScreen(),
        'product': (p0) => ProductData(),
        'cart': (p0) => CartScreen(),
      },
    ),
  );
}
