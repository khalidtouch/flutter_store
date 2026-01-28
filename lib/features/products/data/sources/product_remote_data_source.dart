import '../../../../core/network/api_client.dart';
import '../models/product_model.dart';

class ProductRemoteDataSource {

  final ApiClient apiClient;

  ProductRemoteDataSource(this.apiClient);

  Future<List<ProductModel>> fetchProducts() async {
    final response = await apiClient.get('/products');
    final data = response.data as List;
    print('sample products $data');
    return data.map((json) => ProductModel.fromJson(json)).toList();
  }

  Future<ProductModel> fetchProductDetail(String id) async {
    final response = await apiClient.get('/products/$id');
    return ProductModel.fromJson(response.data);
  }

}