import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../custom_widget/text.dart';
class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc1E8vRryz1uKhCBOIyaP8PXV0PVk2-TxKCQ&s"))

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(text: "Bage"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "৳ 2550",fontWeight: FontWeight.bold,),
                    CustomText(text: "৳ 3099",fontWeight: FontWeight.bold,color: Colors.black38,tDeco: TextDecoration.lineThrough,),
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