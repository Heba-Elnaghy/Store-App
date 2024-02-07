import 'package:flutter_application_1/Models/ProductsModel.dart';

import '../helper/Api.dart';

class CategoriesService {
  Future<List<ProductsModel>> getCategoriesProducts(
      {required String CategoryName}) async {
    List<dynamic> data = await Api()
        .get(Url: "https://fakestoreapi.com/products/category/$CategoryName");

    List<ProductsModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductsModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
