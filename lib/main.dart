import 'package:flutter/material.dart';
import 'package:project_3/view/screens/all_product/all_product.dart';
import 'package:project_3/view/screens/home/home.dart';
import 'package:project_3/view/screens/home/loginScreen.dart';
import 'package:project_3/view/screens/splashScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllProduct(),
    );
  }
}
