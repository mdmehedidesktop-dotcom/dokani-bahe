import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';

import '../../custom_widget/customCard.dart';
import 'Widget/filter_section.dart';
import 'Widget/productCardWidget.dart';
class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(
        text: "All Product",fontWeight: FontWeight.bold,
        fSize: 20,),actions: [
        Icon(Icons.search),
        SizedBox(width: 10,),
        CustomCard(),
        SizedBox(width: 10,),
      ],),
      body: Column(
        children: [
          FilterSection(),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  childAspectRatio: .8
                ) ,
                itemBuilder:(context,i)=>ProductCardWidget()),
          ),
        ],
      )
    );
  }
}




