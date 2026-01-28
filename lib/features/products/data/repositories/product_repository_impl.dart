import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../sources/product_remote_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {

  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Product>> fetchProducts() {
    return remoteDataSource.fetchProducts();
  }

  @override
  Future<Product> fetchProductDetail(String id) {
    return remoteDataSource.fetchProductDetail(id);
  }

}