import 'package:flutter/material.dart';
import 'package:project_3/view/screens/home/home.dart';
import 'package:project_3/view/screens/home/loginScreen.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}


class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    timerFun();

    super.initState();
  }
  timerFun()async{
    await Future.delayed(Duration(seconds: 7)).then((v){


    });

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDJkuGOEXVMWOxJaGa514_WFZBIhXof72G-w&s") ,),

    );
  }
}

