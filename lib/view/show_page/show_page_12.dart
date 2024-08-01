import 'package:flutter/material.dart';
import 'package:mamun_api_practice/model/all_model.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage12 extends StatefulWidget {
  const ShowPage12({super.key});

  @override
  State<ShowPage12> createState() => _ShowPage12State();
}

class _ShowPage12State extends State<ShowPage12> {
  final ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Page 12"),
        centerTitle: true,
      ),
      body: FutureBuilder<Model12>(
        future: _apiService.getApi12(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListTile(
              title: Text(snapshot.data!.punchline.toString()),
              leading: Text(snapshot.data!.id.toString()),
              subtitle: Text(snapshot.data!.setup.toString()),
              trailing: Text(snapshot.data!.type.toString()),
            );
          }else if(snapshot.hasError){
            return const Text("Data not found");
          }else{
            return const Center(
              child: CircularProgressIndicator(
                semanticsLabel: " Loading data",
              ),
            );
          }
        },
      ),
    );
  }
}
