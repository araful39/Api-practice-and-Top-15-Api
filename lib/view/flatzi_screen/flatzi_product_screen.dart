import 'package:flutter/material.dart';
import 'package:mamun_api_practice/model/flatzi_model/flatzi_product_model.dart';
import 'package:mamun_api_practice/service_controller/flatzi_api/flatzi_products_api.dart';

class FlatziProductScreen extends StatefulWidget {
  const FlatziProductScreen({super.key});

  @override
  State<FlatziProductScreen> createState() => _FlatziProductScreenState();
}

class _FlatziProductScreenState extends State<FlatziProductScreen> {
  FlatziProductsApi flatziProducts = FlatziProductsApi();
  List<FlatziProdutsModel> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    await flatziProducts.fetchData();
    list = flatziProducts.myData;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flatzi Product"),
      ),
      body: list.isNotEmpty
          ? ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {


                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Id:${list[index].id}"),
                              Text("Id:${list[index].id}"),
                              Text("price:${list[index].price}"),
                            ],
                          ),
                          Text(" ${list[index].description}")
                        ],
                      ),
                    ),
                  ),
                );
              })
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
