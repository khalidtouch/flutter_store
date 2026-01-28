import '../entities/product.dart';

abstract class ProductRepository {

  Future<List<Product>> fetchProducts();
  Future<Product> fetchProductDetail(String id);

}

