import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../custom_widget/text.dart';
class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: 100,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcV5xzl-6Mwr2ROSZA2mdgM1C16q1t8cEQhA&s"))
              ),
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "Remax Wireless Earbud",fontWeight: FontWeight.bold,),
                  CustomText(text: "৳ 1520",fontWeight: FontWeight.bold,),
                  Row(
                    spacing: 7,
                    children: [
                      CustomText(text: "৳ 2499",tDeco: TextDecoration.lineThrough,color: Colors.black38,),
                      CustomText(text: "- 40%",color: AppColor.primaryColor,)
                    ],
                  )
                ],
              ),
            )
        
        
          ],
        ),
      ),

    );
  }
}