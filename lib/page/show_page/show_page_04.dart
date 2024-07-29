import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage04 extends StatefulWidget {
  const ShowPage04({super.key});

  @override
  State<ShowPage04> createState() => _ShowPage04State();
}

class _ShowPage04State extends State<ShowPage04> {
  ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Page 04"),
        centerTitle: true,
      ),
      body: FutureBuilder(future: _apiService.getApi04(),
          builder: (context,snapshot){
        if (snapshot.hasData){
          return Center(
            child: SizedBox(
              width: 300,
              height: 200,
              child: Card(
                color: Colors.teal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(snapshot.data!.type.toString()),
                    Text(snapshot.data!.price.toString()),
                    Text(snapshot.data!.accessibility.toString()),
                    Text(snapshot.data!.participants.toString()),
                    Text(snapshot.data!.key.toString()),
                    Text(snapshot.data!.activity.toString()),
                    Text(snapshot.data!.link.toString()),
                  ],
                ),
              ),
            ),
          );
        }else if(snapshot.hasError){
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
