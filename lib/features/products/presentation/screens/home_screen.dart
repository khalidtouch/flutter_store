import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/product_item.dart';
import '../providers/product_provider.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({ super.key });

  @override
  Widget build(BuildContext context) {

    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: productProvider.loading
        ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: productProvider.products.length,
        itemBuilder: (ctx, i) => ProductItem(product: productProvider.products[i]),
      ),
    );

  }

}