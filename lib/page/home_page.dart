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
                                builder: (context) => const ShowPage01()));
                      },
                      child: const Text("Public Api 01")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShowPage02()));
                      },
                      child: const Text("Cat Facts Api 02")),
                ],
              ),
              const SizedBox(
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
                                builder: (context) => const ShowPage03()));
                      },
                      child: const Text("CoinDesk Api 03")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi04();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShowPage04()));
                      },
                      child: const Text("Bored Api 04")),
                ],
              ),
              const SizedBox(
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
                                builder: (context) => const ShowPage05()));
                      },
                      child: const Text("Agify.io Api 05")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi06();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShowPage06()));
                      },
                      child: const Text(" Genderize.io Api 06")),
                ],
              ),
              const SizedBox(
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
                                builder: (context) => const ShowPage07()));
                      },
                      child: const Text("Nationalize Api 07")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi08();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShowPage08()));
                      },
                      child: const Text("Cat Facts Api 08")),
                ],
              ),
              const SizedBox(
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
                      child: const Text("DogsApi 09")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi10();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage10()));
                      },
                      child: const Text("IPify Api 10")),
                ],
              ),
              const SizedBox(
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
                      child: const Text("IPinfo Api 11")),
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi12();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShowPage12()));
                      },
                      child: const Text("Jokes Api 12")),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ApiService().getApi13();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShowPage13()));
                      },
                      child: const Text("RandomUser Api 13")),
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowPage02()));
                      },
                      child: const Text("Universities List Api 14")),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowPage02()));
                  },
                  child: const Text("Zippopotam Api 15")),
            ],
          ),
        ));
  }
}
