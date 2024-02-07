import 'package:flutter_application_1/Models/ProductsModel.dart';
import 'package:flutter_application_1/helper/Api.dart';

class AddProduct {
  Future<ProductsModel> addProduct(
      {required title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(Url: 'https://fakestoreapi.com/products', body: {
      "title": title,
      "price": price,
      "description": desc,
      "image": image,
      "category": category
    });
    return ProductsModel.fromJson(data);
  }
}
