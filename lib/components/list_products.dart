import 'package:ecommerce/bo/product.dart';
import 'package:flutter/material.dart';

class ListProducts extends StatelessWidget {
  final Function(Product product) onElementTap;
  const ListProducts({Key? key, required this.onElementTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listProducts.length,

      itemBuilder: (context, index) => ListTile(
        onTap: ()=>onElementTap(listProducts[index]),
        title: Text(listProducts[index].title),
        leading: Image.network(listProducts[index].imageUrl,width: 80),
        subtitle: Text(listProducts[index].description,overflow: TextOverflow.ellipsis,maxLines: 2,),
        isThreeLine: true,
        trailing: Text("${listProducts[index].price}€"),
      )
    );
  }
}
