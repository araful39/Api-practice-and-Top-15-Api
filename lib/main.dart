import 'package:flutter/material.dart';
import 'package:mamun_api_practice/page/home_page.dart';
import 'package:mamun_api_practice/page/show_page/classicit_product_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductDetail(),
    );
  }
}
