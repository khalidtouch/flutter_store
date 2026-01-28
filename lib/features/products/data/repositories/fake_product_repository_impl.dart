import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../sources/product_local_data_source.dart';

class FakeProductRepositoryImpl implements ProductRepository {

  final ProductLocalDataSource localDataSource;

  FakeProductRepositoryImpl(this.localDataSource);

  @override
  Future<List<Product>> fetchProducts() async {
    // Simulate a delay to fetch data
    await Future.delayed(const Duration(milliseconds: 600));
    return localDataSource.getDummyProducts();
  }

  @override
  Future<Product> fetchProductDetail(String id) async {
    return localDataSource
        .getDummyProducts()
        .firstWhere((item) => item.id == id);
  }

}