import 'package:ecommerce/components/detail_product.dart';
import 'package:flutter/material.dart';

import '../bo/product.dart';

class DetailPageNarrow extends StatelessWidget {
  final Product product;
  const DetailPageNarrow({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailProduct(product: product,),
    );
  }
}
