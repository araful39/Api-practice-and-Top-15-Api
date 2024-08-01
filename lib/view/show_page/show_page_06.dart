import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage06 extends StatefulWidget {
  const ShowPage06({super.key});

  @override
  State<ShowPage06> createState() => _ShowPage06State();
}

class _ShowPage06State extends State<ShowPage06> {
  final ApiService _apiService=ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Show page 06"),
      ),
      body: FutureBuilder(future: _apiService.getApi06(),
          builder: (context,snapshot){
        if(snapshot.hasData){
          return Center(
            child: Container(
              color: Colors.cyan,
              height: 200,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name : ${snapshot.data!.name}"),
                  Text("Gender : ${snapshot.data!.gender}"),
                  Text("Probability : ${snapshot.data!.probability}"),
                  Text("Count : ${snapshot.data!.count}"),
                ],
              ),
            ),
          );
        }else if(snapshot.hasError){
          return const Center(
            child: Text("Data not found"),
          );
        }else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
          }),
    );
  }
}
