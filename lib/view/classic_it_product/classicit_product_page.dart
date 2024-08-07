import 'package:flutter/material.dart';
import 'package:mamun_api_practice/model/product_model.dart';
import 'package:mamun_api_practice/service_controller/classic_it_service/classic_it_api.dart';
import 'package:shimmer/shimmer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Products> data = [];
  void getData() async {
    data = await ClassicItApiService.fetchProducts();
    setState(() {});
  }
bool shimmer=false;
  Future<void> refresh(){
    setState(() {
      shimmer=true;
    });
    return Future.delayed(Duration(seconds: 3)).then((value){
      setState(() {
        shimmer = true;
      });
    });
  }
  @override
  void initState() {
    getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products Page"),
      ),
      body: data.isNotEmpty
          ? GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.network(
                      "https://cit-ecommerce-codecanyon.bandhantrade.com/${data[index].image}",height: 100,),
                    Column(
                      children: [
                        Text("Product Name: ${data[index].nameEn}"),
                        Text("Product Name:${data[index].brand}"),
                        Text("Product Name:${data[index].rating}"),
                      ],
                    )
                  ],
                );
              })
          :  Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: 300,
          height: 200,
          color: Colors.white,
        ),
      )  ,
    );
  }
}
