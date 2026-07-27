import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_3/view/custom_widget/text.dart';

import '../../custom_widget/slider.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(title:Row(
        spacing: 10,
        children: [
          CustomText(text: "Dokani ",fontWeight: FontWeight.bold,fSize: 25,color: Color(0Xff3808BF),),
          CustomText(text: "Bahe ",fontWeight: FontWeight.bold,fSize: 25,color: Colors.orangeAccent,),
        ],
      ) ,actions: [
        Badge(
          label: Text("0"),
          backgroundColor: Colors.orangeAccent,
          textColor: Colors.white,
          child:Icon(Icons.shopping_cart_outlined), 
        ),
        
        SizedBox(width: 10,),
      ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          spacing: 8,
          children: [
            SearchWidget(),
            CustomSlider(),


          ],
        ),
      ),

    );
  }
}


