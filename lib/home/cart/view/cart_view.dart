import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproduct/home/screen/controller/product_controller.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  ProductController? productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart Data"),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text(
                            "${productController!.CartList[index].images}",
                            style: TextStyle(fontSize: 30),
                          ),
                          title: Text(
                              "${productController!.CartList[index].name}"),
                          subtitle: Text(
                              "${productController!.CartList[index].price}"),
                          trailing: IconButton(
                              onPressed: () {
                                productController!.CartList.removeAt(index);
                              },
                              icon: Icon(Icons.delete)),
                        );
                      },
                      itemCount: productController!.CartList.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
