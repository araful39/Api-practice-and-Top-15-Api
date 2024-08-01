import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/flatzi_api/flatzi_products_api.dart';

class FlatziProductScreen extends StatefulWidget {
  const FlatziProductScreen({super.key});

  @override
  State<FlatziProductScreen> createState() => _FlatziProductScreenState();
}

class _FlatziProductScreenState extends State<FlatziProductScreen> {
  FlatziProductsApi flatziProducts = FlatziProductsApi();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();

  }
 getData()async{
    await flatziProducts.fetchData();

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flatzi Product"),
      ),
      body: flatziProducts.myData.isNotEmpty
          ? ListView.builder(
              itemCount: flatziProducts.myData.length,
              itemBuilder: (context, index) {
                var data = flatziProducts.myData;
                return Card(
                  child: Column(
                    children: [

                      Text("Name:${data[index].title}"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Id:${data[index].id}"),
                          Text("Id:${data[index].id}"),
                          Text("price:${data[index].price}"),
                        ],
                      ),
                      Text(" ${data[index].description}")
                    ],
                  ),
                );
              })
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
