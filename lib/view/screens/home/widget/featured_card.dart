import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../custom_widget/text.dart';
class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
    required this.featureProducts, required this.i,
  });

  final List featureProducts;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(featureProducts[i]['image']))
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text:featureProducts[i]['name'], ),
                CustomText(text:featureProducts[i]['price'],fontWeight: FontWeight.bold, ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text:featureProducts[i]['old'],
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,tDeco:TextDecoration.lineThrough , ),
                    CustomText(text:featureProducts[i]['offer'],
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold, ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}