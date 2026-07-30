import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../custom_widget/text.dart';
class ProductCardWidget extends StatelessWidget {
  final productData;
  const ProductCardWidget({
    super.key, this.productData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(productData['image']??'')),

                ),
              ),

              Positioned(
                top: 5,
                  right: 5,
                  child: IconButton(onPressed: () {  },
                    icon: Icon(Icons.favorite),)
              )

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(text: productData['name']??''),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: productData['price']??'',fontWeight: FontWeight.bold,),
                    CustomText(text: productData['old']??'',fontWeight: FontWeight.bold,color: Colors.black38,tDeco: TextDecoration.lineThrough,),
                    CustomText(text: "%25",fontWeight: FontWeight.bold,color: AppColor.primaryColor,),
                  ],
                ),
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    CustomText(text: "4.5",color: AppColor.primaryColor,),
                    CustomText(text: "(256)",color: Colors.grey.shade600,)
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