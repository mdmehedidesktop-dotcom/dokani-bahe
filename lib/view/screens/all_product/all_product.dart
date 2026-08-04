import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/customCart.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/all_product/Widget/filter_section.dart';

import 'Widget/productCardWidget.dart';


class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "All Product",fontWeight: FontWeight.bold,fSize: 20,),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 10,),
        CustomCart(),
        SizedBox(width: 10,)

      ],
      ),
      body:  Column(
        children: [
          FilterSection(),
          Expanded(
            child: GridView.builder(

                itemCount: 50,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: .8),
                itemBuilder: (context,i)=>ProductCardWidget()),
          ),
        ],
      ),
    );
  }
}


