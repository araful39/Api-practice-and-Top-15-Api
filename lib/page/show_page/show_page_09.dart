import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';
class ShowPage09 extends StatelessWidget {
  ShowPage09({super.key});
  ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show page 09"),
        centerTitle: true,
      ),
      body: FutureBuilder(future: _apiService.getApi09(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Center(
                child: Column(children: [
                  CachedNetworkImage(
                    height: 400,
                    width: 400,
                    imageUrl: snapshot.data!.message.toString(),
                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                        CircularProgressIndicator(value: downloadProgress.progress),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),

                  Text(snapshot.data!.status.toString())
                ],),
              );
            }else if(snapshot.hasError){
              return Center(
                child: Text(" Data not found") ,
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

