import 'package:flutter/material.dart';
import 'package:project_3/database/product.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/customCart.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/all_product/Widget/filter_section.dart';

import '../../../model/product.dart';
import 'Widget/productCardWidget.dart';


class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {

  List<productModel> productData = [];

  getProduct(){
    productData.addAll(ProductData.pd);
    setState(() {});

  }


  @override
  void initState() {
    getProduct();
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "All Product (${productData.length})",fontWeight: FontWeight.bold,fSize: 20,),
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

                itemCount: productData.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: .8),
                itemBuilder: (context,i)=>ProductCardWidget(
                  pData: productData[i],
                  )),
          ),
        ],
      ),
    );
  }
}


