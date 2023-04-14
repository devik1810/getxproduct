import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproduct/home/screen/controller/product_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductController? productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product"),
          centerTitle: true,
          backgroundColor: Colors.black54,
          actions: [IconButton(onPressed: () {
            Get.toNamed("cart");

          }, icon: Icon(Icons.add_shopping_cart))
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Get.toNamed('product',arguments: index);
                        },
                        leading: Text(
                          "${productController!.productmodel[index].images}",
                          style: TextStyle(fontSize: 30),
                        ),
                        title: Text(
                            "${productController!.productmodel[index].name}"),
                        subtitle: Text(
                            "${productController!.productmodel[index].price}"),
                      );
                    },
                    itemCount: productController!.productmodel.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
