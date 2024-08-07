import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamun_api_practice/service_controller/classic_it_service/classic_it_api.dart';
import 'package:mamun_api_practice/view/home_page.dart';

class ClassicItLoginScreen extends StatefulWidget {
  const ClassicItLoginScreen({super.key});

  @override
  State<ClassicItLoginScreen> createState() => _ClassicItLoginScreenState();
}

class _ClassicItLoginScreenState extends State<ClassicItLoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(hintText: "Email or Phone"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: passController,
                decoration: const InputDecoration(hintText: "Password"),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async{


                 var isLogin=  ClassicItApiService.loginApi(
                          emailController.text, passController.text);
                 if(isLogin==true){
                   await Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
           
                 }else{
                   ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(content: Text("Please Correct Email Or Password"))
                   );
                 }

                    },
                    child: const Text("Log In")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
