import 'package:flutter/material.dart';

import '../bo/product.dart';

class DetailProduct extends StatelessWidget {
  final Product? product;
  const DetailProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return product == null ? const Text("Click a product")
      : Column(children: [
        Text("Titre ${product!.title}"),
        Text("description ${product!.description}"),
        Text("price ${product!.price}"),
        Text("category ${product!.category}"),
      ],
    );
  }
}
