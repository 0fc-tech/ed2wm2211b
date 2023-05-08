import 'package:ecommerce/components/list_products.dart';
import 'package:flutter/material.dart';

class HomePageNarrow extends StatelessWidget {
  const HomePageNarrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListProducts(onElementTap: (product) => {print(product)},),
    );
  }
}
