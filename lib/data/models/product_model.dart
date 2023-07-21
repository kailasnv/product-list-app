class ProductModel {
  final String title;
  final String imagePath;
  final int price;
  final String description;

  const ProductModel({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json["title"],
      imagePath: json["image"],
      price: json["price"],
      description: json["description"],
    );
  }
}
