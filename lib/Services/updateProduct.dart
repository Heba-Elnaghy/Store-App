import '../Models/ProductsModel.dart';
import '../helper/Api.dart';

class UpdateProduct {
  Future<ProductsModel> updateProduct(
      {required title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().Put(Url: 'https://fakestoreapi.com/products/$id', body: {
      "title": title,
      "price": price,
      "description": desc,
      "image": image,
      "category": category,
    });
    return ProductsModel.fromJson(data);
  }
}
