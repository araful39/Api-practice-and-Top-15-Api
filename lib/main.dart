import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamun_api_practice/page/home_page.dart';
import 'package:mamun_api_practice/page/show_page/show_page_01.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
