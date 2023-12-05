import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage03 extends StatefulWidget {
  const ShowPage03({super.key});

  @override
  State<ShowPage03> createState() => _ShowPage03State();
}

class _ShowPage03State extends State<ShowPage03> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService().getApi03();
  }
  ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Api 03"),
  centerTitle: true,
),
      body:FutureBuilder(future: _apiService.getApi03(),
          builder: (context,snapshot){
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: 3,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.tealAccent,
                    height: 250,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [

                          Text(snapshot.data!.time!.updated.toString()),
                          Text(snapshot.data!.time!.updatedISO.toString()),
                          Text(snapshot.data!.time!.updateduk.toString()),
                          Text(snapshot.data!.bpi!.eUR!.rateFloat.toString()),
                          Text(snapshot.data!.bpi!.gBP!.description.toString()),
                          Text(snapshot.data!.bpi!.gBP!.symbol.toString()),
                          Text(snapshot.data!.chartName.toString()),
                          Text(snapshot.data!.disclaimer.toString()),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }else if (snapshot.hasError){
          return Text(snapshot.hasError.toString());
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
          }),
    );
  }
}
