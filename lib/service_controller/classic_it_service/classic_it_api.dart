import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mamun_api_practice/model/product_model.dart';

class ClassicItApiService {
  String baseUrl = "https://cit-ecommerce-codecanyon.bandhantrade.com";
// log In
  static  loginApi(String email,String pass) async {
    print(" ${email.toString()} && ${pass.toString()}");
    String baseUrl = "https://cit-ecommerce-codecanyon.bandhantrade.com";
    Response response = await http.post(Uri.parse('$baseUrl/api/login'),
        body: {'Email_phone': email, 'password': pass});
    if (response.statusCode == 200) {
      log("Response:${response.runtimeType}");
      return true;
    }else{
      return false;
    }
  }








  //fetch Product
  static fetchProducts() async {
    Response response = await http.get(Uri.parse(
        "https://cit-ecommerce-codecanyon.bandhantrade.com/api/app/v1/products"));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      log("${json.runtimeType}");
      ProductListModel data = ProductListModel.fromJson(json);
      log("${data.runtimeType}");
      log("${data.products?.length}");
      return data.products;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
