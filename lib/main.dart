import 'package:flutter/material.dart';
import 'package:flutter_store/features/products/data/repositories/fake_product_repository_impl.dart';
import 'package:flutter_store/features/products/data/sources/product_local_data_source.dart';
import 'package:flutter_store/features/products/presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'core/network/api_client.dart';
import 'features/products/data/sources/product_remote_data_source.dart';
import 'features/products/data/repositories/product_repository_impl.dart';
import 'features/products/presentation/providers/product_provider.dart';

void main() {
  final productRepository = FakeProductRepositoryImpl(ProductLocalDataSource());

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider(productRepository)..loadProducts()),
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
