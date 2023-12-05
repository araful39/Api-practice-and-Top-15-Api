import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPaga10 extends StatelessWidget {
  ShowPaga10({super.key});
ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show page 10"),
        centerTitle: true,
      ),
      body: FutureBuilder(future: _apiService.getApi10(),
          builder: (context,snapshot){
        if(snapshot.hasError){
          return Center(
            child: Text("Error"),
          );
        }
        else if(snapshot.hasData){
          return Card(
            color: Colors.teal,
            child: ListTile(
              title: Text("Ip : ${snapshot.data!.ip}"),

            ),
          );
        }
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
          }),
    );
  }
}
