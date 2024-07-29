import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'package:mamun_api_practice/model/all_model.dart';

class ApiService {
  String url01 = "https://api.publicapis.org/entries";
  String url07 = "https://api.nationalize.io?name=nathaniel";

  Future<List<Model01>> getApi01() async {
    Response response = await http.get(Uri.parse(url01));
    // print(response.runtimeType);
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = jsonDecode(response.body);
      // print(decode.runtimeType);
      List<dynamic> data = decode["entries"];

      List<Model01> articlesList =
          data.map((item) => Model01.fromJson(item)).toList();
      return articlesList;
    } else {
      if (kDebugMode) {
        print("Data not");
      }
      throw Exception("data not found");
    }
  }

  Future<Model03> getApi03() async {
    String url03 = "https://api.coindesk.com/v1/bpi/currentprice.json";
    Response response = await http.get(Uri.parse(url03));

    if (response.statusCode == 200) {
      // print(data["time"]);
      Model03 result = Model03.fromJson(jsonDecode(response.body));
      return result;
    } else {
      throw Exception(" data not found Api 03");
    }
  }

  Future<Model04> getApi04() async {
    String url04 = "https://www.boredapi.com/api/activity";
    Response response = await http.get(Uri.parse(url04));
    if (response.statusCode == 200) {
      Model04 result01 = Model04.fromJson(jsonDecode(response.body));
      return result01;
    } else {
      throw Exception("Vai data nai");
    }
  }

  Future<Model05> getApi05() async {
    String url05 = "https://api.agify.io?name=meelad";
    Response response = await http.get(Uri.parse(url05));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      Model05 data5 = Model05.fromJson(data);
      if (kDebugMode) {
        print(data5.runtimeType);
      }
      return data5;
    } else {
      throw Exception("Data not found Raju");
    }
  }

  Future<Model06> getApi06() async {
    String url06 = "https://api.genderize.io?name=luc";

    Response response = await http.get(Uri.parse(url06));

    if (response.statusCode == 200) {
      var decode = jsonDecode(response.body);
      Model06 result = Model06.fromJson(decode);
      return result;
    } else {
      throw Exception("Data note found Api 06");
    }
  }

  Future<List<Model07>> getApi07() async {
    Response response = await http.get(Uri.parse(url07));
    // print(response.runtimeType);
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = jsonDecode(response.body);
      // print(decode.runtimeType);
      List<dynamic> data = decode["country"];

      List<Model07> articlesList07 =
          data.map((item) => Model07.fromJson(item)).toList();
      return articlesList07;
    } else {
      if (kDebugMode) {
        print("Data not");
      }
      throw Exception("data not found");
    }
  }

  Future<Model08> getApi08() async {
    String url08 =
        "https://datausa.io/api/data?drilldowns=Nation&measures=Population";
    Response response = await http.get(Uri.parse(url08));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      Model08 result08 = Model08.fromJson(data);
      return result08;
    } else {
      throw Exception("Api not 08");
    }
  }

  Future<Model09> getApi09() async {
    String url09 = "https://dog.ceo/api/breeds/image/random";
    Response response = await http.get(Uri.parse(url09));
    if (response.statusCode == 200) {
      var decode = jsonDecode(response.body);
      Model09 result09 = Model09.fromJson(decode);
      return result09;
    } else {
      throw Exception("data not found Api 09");
    }
  }

  Future<Model10> getApi10() async {
    String url10 = "https://api.ipify.org?format=json";
    Response response = await http.get(Uri.parse(url10));
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = jsonDecode(response.body);
      Model10 result10 = Model10.fromJson(decode);
      return result10;
    } else {
      throw Exception("Api 10 not availabel");
    }
  }

// void getApi11()async{
//   String url11="https://ipinfo.io/161.185.160.93/geo";
//
//   Response response=await http.get(Uri.parse(url11));
//  print(response.statusCode);
//
// }

  Future<Model12> getApi12() async {
    String url12 = "https://official-joke-api.appspot.com/random_joke";

    Response response = await http.get(Uri.parse(url12));
    // print(response.statusCode);
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = jsonDecode(response.body);
      // print(decode.runtimeType);
      Model12 result = Model12.fromJson(decode);
      // print(result.runtimeType);
      return result;
    } else {
      throw Exception("Api 12 Error");
    }
  }

  Future<Model13> getApi13() async {
    String url13 = "https://randomuser.me/api/";
    Response response = await http.get(Uri.parse(url13));
    // print(response.statusCode);
    if (response.statusCode == 200) {
      var decode = jsonDecode(response.body);
      if (kDebugMode) {
        print(decode.runtimeType);
      }
      Model13 result = Model13.fromJson(decode);
      return result;
    } else {
      throw Exception("Api 13 Error");
    }
  }
}
