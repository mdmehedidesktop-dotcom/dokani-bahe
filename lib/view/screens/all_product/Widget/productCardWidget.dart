import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../model/product.dart';
import '../../../../utils/colors.dart';
import '../../../custom_widget/text.dart';
import 'filter_section.dart';
class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key, required this.pData,
  });

  final productModel pData;




  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                    NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTejCIOPBQ0qCPJ81MF1J9k2i2GiZm-aO9qFw&s"))
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text:pData.title,fontWeight: FontWeight.bold,),
                Row(
                  spacing: 7,
                  children: [
                    CustomText(text: "৳ ${pData.dis_price}",fontWeight: FontWeight.bold,),
                    CustomText(text: "৳ ${pData.reg_price
                    }",tDeco: TextDecoration.lineThrough,color: Colors.black38,),

                    CustomText(text: "- 40%",color: AppColor.primaryColor,),
                  ],
                ),
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    CustomText(text: "4.9",color: AppColor.primaryColor,),
                    CustomText(text: "(279)",color: Colors.black,)
                  ],
                )

              ],
            ),
          )

        ],
      ),

    );
  }
}