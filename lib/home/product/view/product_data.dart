import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproduct/home/screen/controller/product_controller.dart';
import 'package:getxproduct/home/screen/model/product_model.dart';

class ProductData extends StatefulWidget {
  const ProductData({Key? key}) : super(key: key);

  @override
  State<ProductData> createState() => _ProductDataState();
}

class _ProductDataState extends State<ProductData> {
  ProductController? productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Data"),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12),
                  child: Column(
                    children: [
                      SizedBox(height: 7),
                      Text(
                        "${productController!.productmodel[index].images}",
                        style: TextStyle(fontSize: 50),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${productController!.productmodel[index].name}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${productController!.productmodel[index].price}",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ProductModel P1 = ProductModel(
                  images: "${productController!.productmodel[index].images}",
                  name: "${productController!.productmodel[index].name}",
                  price: "${productController!.productmodel[index].price}",
                );
                productController!.CartList.add(P1);
                Get.back();
              },
              child: Text(
                "Add To cart",
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black38),
            )
          ],
        ),
      ),
    );
  }
}
