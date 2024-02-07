class ProductsModel {
   int id;
   String title;
   String image;
   String description;
   double price;
   RatingModel rating;
   String category;

  ProductsModel({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
    required this.category,
  });

  factory ProductsModel.fromJson(jsonData) {
    return ProductsModel(
      id: jsonData['id'],
      title: jsonData['title'],
      image: jsonData['image'],
      description: jsonData['description'],
      price: jsonData['price'],
      rating: RatingModel.fromJson(jsonData['rating']),
      category: jsonData['category'],
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
