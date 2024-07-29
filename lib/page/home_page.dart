import 'package:flutter/material.dart';
import 'package:mamun_api_practice/page/show_page/show_paga_07.dart';
import 'package:mamun_api_practice/page/show_page/show_page_02.dart';
import 'package:mamun_api_practice/page/show_page/show_page_03.dart';
import 'package:mamun_api_practice/page/show_page/show_page_04.dart';
import 'package:mamun_api_practice/page/show_page/show_page_05.dart';
import 'package:mamun_api_practice/page/show_page/show_page_06.dart';
import 'package:mamun_api_practice/page/show_page/show_page_08.dart';
import 'package:mamun_api_practice/page/show_page/show_page_09.dart';
import 'package:mamun_api_practice/page/show_page/show_page_10.dart';
import 'package:mamun_api_practice/page/show_page/show_page_12.dart';
import 'package:mamun_api_practice/page/show_page/show_page_13.dart';

import 'package:mamun_api_practice/page/show_page/show_page_01.dart';
import 'package:mamun_api_practice/service_controller/api_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService().getApi09();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("apipheny.com"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage01()));
                      },
                      child: const Text("Public Api 01")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage02()));
                      },
                      child: Text("Cat Facts Api 02")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi03();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage03()));
                      },
                      child: Text("CoinDesk Api 03")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi04();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage04()));
                      },
                      child: Text("Bored Api 04")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi05();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage05()));
                      },
                      child: Text("Agify.io Api 05")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi06();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage06()));
                      },
                      child: Text(" Genderize.io Api 06")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage07()));
                      },
                      child: Text("Nationalize Api 07")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi08();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage08()));
                      },
                      child: Text("Cat Facts Api 08")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi09();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage09()));
                      },
                      child: Text("DogsApi 09")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi10();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPaga10()));
                      },
                      child: Text("IPify Api 10")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // ApiService().getApi11();
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowPage01()));
                      },
                      child: Text("IPinfo Api 11")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi12();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage12()));
                      },
                      child: Text("Jokes Api 12")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi13();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage13()));
                      },
                      child: Text("RandomUser Api 13")),
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowPage02()));
                      },
                      child: Text("Universities List Api 14")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowPage02()));
                  },
                  child: Text("Zippopotam Api 15")),
            ],
          ),
        ));
  }
}
