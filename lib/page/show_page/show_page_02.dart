import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mamun_api_practice/model/all_model.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage02 extends StatefulWidget {
  const ShowPage02({super.key});

  @override
  State<ShowPage02> createState() => _ShowPage02State();
}

class _ShowPage02State extends State<ShowPage02> {
  late Future<Model02> futureMap;
  @override
  void initState() {
    futureMap=getApi02();
    super.initState();
  }
  Future<Model02> getApi02()async{
    String urlo02="https://catfact.ninja/fact";
    Response response =await http.get(Uri.parse(urlo02));
    if(response.statusCode==200) {
      Map<String, dynamic> decode = jsonDecode(response.body);
      // print(decode["length"].toString());
      return Model02.fromJson(decode);
    }else{
      throw Exception("Failed to load ");
    }






  }



  ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api 02"),centerTitle: true,
      ),
      body: FutureBuilder<Model02>(
          future:futureMap,
          builder: (context,snapshot){
        if(snapshot.hasData){
         return Center(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 300,
               color: Colors.teal,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Fact : ${snapshot.data!.fact.toString()}"),
                   SizedBox(
                     height: 10,
                   ),
                   Text("Random : ${snapshot.data!.length.toString()}")
                 ],
               ),
             ),
           ),
         );
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
          }),
    );
  }
}
