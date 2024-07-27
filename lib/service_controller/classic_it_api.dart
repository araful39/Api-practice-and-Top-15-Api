import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mamun_api_practice/model/product_model.dart';

class ClassicItApiService{
  Future<List<ProductModel>> fetchProducts() async {
    Response response = await http.get(Uri.parse(
        "https://cit-ecommerce-codecanyon.bandhantrade.com/api/app/v1/products"));
    if (response.statusCode == 200) {
      var body = response.body;
      print("Body: ${body.runtimeType}");
      var json = jsonDecode(body);
      print("Body: ${json.runtimeType}");
      List<dynamic> jsonList = json["products"];
      print("Body: $jsonList");
      print("Body: ${jsonList.runtimeType}");
      return  jsonList.map((product) => ProductModel.fromJson(product)).toList();

    }
    else {
      throw Exception('Failed to load products');
    }
  }
}