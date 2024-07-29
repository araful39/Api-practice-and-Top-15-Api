import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage10 extends StatelessWidget {
  ShowPage10({super.key});
final ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show page 10"),
        centerTitle: true,
      ),
      body: FutureBuilder(future: _apiService.getApi10(),
          builder: (context,snapshot){
        if(snapshot.hasError){
          return const Center(
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
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
          }),
    );
  }
}
