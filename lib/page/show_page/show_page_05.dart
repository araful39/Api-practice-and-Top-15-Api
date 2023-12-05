import 'package:flutter/material.dart';
import 'package:mamun_api_practice/model/all_model.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage05 extends StatefulWidget {
  const ShowPage05({super.key});

  @override
  State<ShowPage05> createState() => _ShowPage05State();
}

class _ShowPage05State extends State<ShowPage05> {
  late Model05 list;
  ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Page 04"),
        centerTitle: true,
      ),
      body: FutureBuilder(future: _apiService.getApi05(),
          builder: (context,snapshot){
        if(snapshot.hasError){
          return Center(
            child: Text("Error"),
          );
        }else if(snapshot.hasData){
          return Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.tealAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name : ${snapshot.data!.name.toString()}"),
                  Text("Age : ${snapshot.data!.age.toString()}")
                 , Text("Count : ${snapshot.data!.count.toString()}"),

                ],
              ),
            ),
          );
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
          })
    );
  }
}
