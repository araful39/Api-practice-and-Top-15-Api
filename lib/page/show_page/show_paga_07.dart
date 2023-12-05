import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage07 extends StatefulWidget {
  const ShowPage07({super.key});

  @override
  State<ShowPage07> createState() => _ShowPage07State();
}

class _ShowPage07State extends State<ShowPage07> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService().getApi07();
  }
  ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nationalize.io"),
        centerTitle: true,
      ),
      body: FutureBuilder(future: _apiService.getApi07(),
          builder: (context,snapshot){
        if(snapshot.hasData){
          return GridView.builder(
            itemCount: snapshot.data!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.cyan,
                height: 200,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Country ID : ${snapshot.data![index].countryId}"),
                      SizedBox(height: 10,),
                      Text("Probability : ${snapshot.data![index].probability}")
                    ],
                  ),
                ),
              ),
            );
              });
        }else if(snapshot.hasError
        ){
          return Center(
            child: Text(snapshot.hasError.toString()),
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
