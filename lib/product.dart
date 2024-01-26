class Product {
  String title;
  String price;
  String description;
  String category;
  String image;
  String ratingValue;
  int ratingCount;

  Product(
      {required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.ratingValue,
      required this.ratingCount});

  factory Product.fromJson(var data) {
    return Product(
        title: data["title"],
        price: data["price"].toString(),
        description: data["description"],
        category: data["category"],
        image: data["image"],
        ratingValue: data["rating"]["rate"].toString(),
        ratingCount: data["rating"]["count"]);
  }
}
