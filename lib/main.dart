import 'package:flutter/material.dart';
import 'package:mamun_api_practice/view/flatzi_screen/flatzi_product_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlatziProductScreen(),
    );
  }
}
