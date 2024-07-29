import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage08 extends StatefulWidget {
  const ShowPage08({super.key});

  @override
  State<ShowPage08> createState() => _ShowPage08State();
}

class _ShowPage08State extends State<ShowPage08> {
  final ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Page 08"),
        centerTitle: true,
      ),
      body: FutureBuilder(future: _apiService.getApi08(),
          builder: (context,snapshot){
        if(snapshot.hasData){
          return ListView.builder(
              itemCount: snapshot.data!.data!.length,
              itemBuilder:
          (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 200,

                decoration: const BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.circle

                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Id nation : ${snapshot.data!.data![index].iDNation.toString()}"),
                      Text("Nation : ${snapshot.data!.data![index].nation.toString()}"),
                      Text("Population :${snapshot.data!.data![index].population.toString()}"),
                      Text("Year : ${snapshot.data!.data![index].year.toString()}"),
                      Text("SlugNation :${snapshot.data!.data![index].slugNation.toString()}"),
                      Text("Id year : ${snapshot.data!.data![index].iDYear.toString()}"),

                    ],
                  ),
                ),
              ),
            );
          });
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
