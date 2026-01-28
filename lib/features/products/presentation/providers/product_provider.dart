import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';

class ProductProvider with ChangeNotifier {

  final ProductRepository repository;

  ProductProvider(this.repository);

  List<Product> _products = [];
  bool _loading = false;

  List<Product> get products => _products;
  bool get loading => _loading;

  Future<void> loadProducts() async {

    _loading = true;
    notifyListeners();

    try {
      _products = await repository.fetchProducts();

    } catch (e) {
      print('Error loading products: $e');
    }

    _loading = false;
    notifyListeners();

  }

}