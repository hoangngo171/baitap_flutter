class Product {
  final int id;
  final String name;
  final String unit;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.unit,
    required this.price,
    required this.imageUrl,
  });

  /// Optional helper if you later load products from an API.
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: (json['id'] ?? 0) as int,
      name: (json['name'] ?? json['title'] ?? '') as String,
      unit: (json['unit'] ?? '') as String,
      price: (json['price'] is num)
          ? (json['price'] as num).toDouble()
          : double.tryParse('${json['price']}') ?? 0,
      imageUrl: (json['imageUrl'] ?? json['image'] ?? '') as String,
    );
  }
}
