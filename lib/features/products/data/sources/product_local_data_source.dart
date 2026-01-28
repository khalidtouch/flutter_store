import '../../domain/entities/product.dart';

class ProductLocalDataSource {
  List<Product> getDummyProducts() {
    return [
      Product(
        id: '1',
        title: 'Product 1',
        description: 'Apple iPhone 15 Pro with A17 chip, titanium design, and advanced camera system.',
        price: 1299.00,
        imageUrl: 'https://res.cloudinary.com/dbpo9earq/image/upload/v1769617352/cld-sample-5.jpg'
      ),
      Product(
        id: '2',
        title: 'MacBook Pro M3',
        description:
        'Apple MacBook Pro powered by M3 chip, 18GB RAM, and Liquid Retina XDR display.',
        price: 2499.00,
        imageUrl: 'https://res.cloudinary.com/dbpo9earq/image/upload/v1769617352/cld-sample-5.jpg',
      ),
      Product(
        id: '3',
        title: 'Samsung Galaxy S24 Ultra',
        description:
        'Samsung flagship smartphone with Snapdragon processor and 200MP camera.',
        price: 1199.00,
        imageUrl: 'https://res.cloudinary.com/dbpo9earq/image/upload/v1769617352/cld-sample-5.jpg',
      ),
      Product(
        id: '4',
        title: 'Sony WH-1000XM5',
        description:
        'Industry-leading noise cancelling wireless headphones with premium sound.',
        price: 399.00,
        imageUrl: 'https://res.cloudinary.com/dbpo9earq/image/upload/v1769617352/cld-sample-5.jpg',
      ),
      Product(
        id: '5',
        title: 'Apple Watch Ultra 2',
        description:
        'Rugged smartwatch with advanced fitness tracking and extreme durability.',
        price: 799.00,
        imageUrl: 'https://res.cloudinary.com/dbpo9earq/image/upload/v1769617352/cld-sample-5.jpg',
      ),
    ];
  }
}