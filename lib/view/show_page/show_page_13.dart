import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage13 extends StatefulWidget {
  const ShowPage13({super.key});

  @override
  State<ShowPage13> createState() => _ShowPage13State();
}

class _ShowPage13State extends State<ShowPage13> {
  final ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Show page 13"),
      ),
      body: FutureBuilder(future: _apiService.getApi13(),
          builder:(context,snapshot){
        if(snapshot.hasData){
          return ListTile(

            title: Text(snapshot.data!.results![0].name!.first.toString()),
          );

        }
        else if(snapshot.hasError){
          return const Text("Data not found");
        }else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
          }),
    );
  }
}
