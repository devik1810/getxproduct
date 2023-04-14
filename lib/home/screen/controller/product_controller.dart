import 'package:get/get.dart';
import 'package:getxproduct/home/screen/model/product_model.dart';

class ProductController {
  RxList<ProductModel> productmodel = <ProductModel>[
    ProductModel(images: "🥝", name: "Kiwi", price: "150"),
    ProductModel(images: "🍐", name: "Pear", price: "100"),
    ProductModel(images: "🍉", name: "Watermelon", price: "120"),
    ProductModel(images: "🍍", name: "Pineapple", price: "200"),
    ProductModel(images: "🍌", name: "Banana", price: "70"),
    ProductModel(images: "🍒", name: "Cherries", price: "200"),
    ProductModel(images: "🍓", name: "Strawberry", price: "110"),
    ProductModel(images: "🍏", name: "Green apple", price: "150"),
    ProductModel(images: "🍈", name: "Melon", price: "160"),
    ProductModel(images: "🥭", name: "Mango", price: "1200"),
    ProductModel(images: "🍎", name: "Apple", price: "250"),
  ].obs;

  RxList<ProductModel> CartList = <ProductModel>[].obs;
}
