import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {

  final Product product;

  const ProductItem({ super.key, required this.product });

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      child: ListTile(
        leading: Image.network(
          product.imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(product.title),
        subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
        onTap: () {

          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (_) => ProductDetailScreen(product: product),
              )
          );
        },
      )
    );
  }

}