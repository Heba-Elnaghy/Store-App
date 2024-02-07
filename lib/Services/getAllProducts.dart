import 'package:flutter_application_1/helper/Api.dart';

import 'package:flutter_application_1/Models/ProductsModel.dart';

class AllProducts {
  Future<List<ProductsModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(Url: "https://fakestoreapi.com/products");

    List<ProductsModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductsModel.fromJson(data[i]),
      );
    }
    print(productsList.length);
    return productsList;
  }
}
