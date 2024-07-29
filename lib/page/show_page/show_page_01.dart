import 'package:flutter/material.dart';

import 'package:mamun_api_practice/model/all_model.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class ShowPage01 extends StatefulWidget {

   const ShowPage01({super.key,});

  @override
  State<ShowPage01> createState() => _ShowPage01State();
}

class _ShowPage01State extends State<ShowPage01> {
@override
  void initState() {

    super.initState();
    ApiService().getApi01();
  }
ApiService apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:FutureBuilder(future: apiService.getApi01(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<Model01> articleList=snapshot.data ?? [];
              return GridView.builder(
                itemCount: articleList.length,
                itemBuilder: (context,index){

                  return SizedBox(
                    height: 250,
                    child: Card(
                      color: Colors.tealAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(articleList[index].aPI.toString()),
                      Text(articleList[index].cors.toString()),

                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Text(articleList[index].auth.toString()),
                            const SizedBox(height: 10,),

                  Text(articleList[index].hTTPS.toString(),),
                            const SizedBox(height: 10,),
                            Text(articleList[index].category.toString()),
                            const SizedBox(height: 10,),
                            Expanded(child: Text("Link : ${articleList[index].link.toString()}")),
                            const SizedBox(height: 10,),

                            Expanded(child: Text("Description : ${articleList[index].description.toString()}"))
                          ],
                        ),
                      ),
                    ),
                  );
                }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),);
            }else if(snapshot.hasError){
              return const Text("Data note, Api problem");
            }else{
              return const Center(child: CircularProgressIndicator());
            }
          })
    );
  }
}
