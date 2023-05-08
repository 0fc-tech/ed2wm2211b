import 'package:ecommerce/components/detail_product.dart';
import 'package:ecommerce/components/list_products.dart';
import 'package:flutter/material.dart';

import '../bo/product.dart';

class HomePageLoose extends StatefulWidget {
  const HomePageLoose({Key? key}) : super(key: key);

  @override
  State<HomePageLoose> createState() => _HomePageLooseState();
}

class _HomePageLooseState extends State<HomePageLoose> {
  Product _productToShow = listProducts[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children:  [
        Flexible(flex: 3, child: ListProducts( onElementTap: (product) {
          setState(() {
            _productToShow = product;
          });
        },),),
        Flexible(
          flex: 5,
            child: DetailProduct(product : _productToShow)
        )
      ]),
    );
  }
}
