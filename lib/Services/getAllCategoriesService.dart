import '../helper/Api.dart';
import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(Url: "https://fakestoreapi.com/products/categories");

    return data;
  }
}
