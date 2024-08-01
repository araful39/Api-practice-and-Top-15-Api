import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mamun_api_practice/model/flatzi_model/flatzi_product_model.dart';

class FlatziProductsApi {
  List<FlatziProdutsModel> myData = [];
  Future<List<FlatziProdutsModel>> fetchData() async {
    Response response =
        await http.get(Uri.parse("https://api.escuelajs.co/api/v1/products"));

    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);


     for(var data in responseData){
       FlatziProdutsModel flatziProdutsModel=FlatziProdutsModel.fromJson(data);
       myData.add(flatziProdutsModel);
     }
     log("${myData.length}");
    return myData ;


    }
    else{
      log("Error");
    }
    return [];
  }
}
