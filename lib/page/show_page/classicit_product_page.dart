import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';
import 'package:mamun_api_practice/service_controller/classic_it_api.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {

  @override
  void initState() {
    ClassicItApiService;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products Page"),
      ),

    );
  }
}
