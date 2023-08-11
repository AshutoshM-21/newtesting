class Product {
  final String name;
  final String description;
  final String price;
  final String category;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
    );
  }
}
