import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/customCart.dart';
import 'package:project_3/view/custom_widget/slider.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/details/widget/image_slider.dart';

import '../../custom_widget/custom_button.dart';
class Details extends StatefulWidget {
  const Details({super.key});


  @override
  State<Details> createState() => _DetailsState();
}
final List bannerImage =const[
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrWWFEhCJvvJOZtYtmy5coTVLBJtTbtSS2ew&s",

];

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CustomCart(),SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 10,
            children: [
              productimageSlider(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: "Apex Smart Watch",fontWeight: FontWeight.bold,fSize: 20,),
                      Icon(Icons.share)
                    ],
                  ),
                  Row(
                    spacing: 12,
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      CustomText(text: "4.7",color: AppColor.primaryColor,),
                      CustomText(text: "(240 Reviews)",color: Colors.black38,)
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      CustomText(text: "৳ 2,399",fontWeight: FontWeight.bold,fSize: 20,),
                      CustomText(text: "৳ 3,999",tDeco: TextDecoration.lineThrough,color: Colors.black38,),
                      CustomText(text: "-40 %",color: AppColor.primaryColor,),
                    ],
                  ),
                  Divider(color: Colors.black12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          spacing: 7,
                          children: [
                            Icon(Icons.surround_sound),
                            CustomText(text: "Super Extra Bass",fontWeight: FontWeight.w400,)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.access_time),
                            CustomText(text: "Up to 15H Playback"),
                          ],
                        ),
                      )
        
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          spacing: 7,
                          children: [
                            Icon(Icons.headphones),
                            Expanded(child: CustomText(text: "Soft Padded Ear Cushions")),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          spacing: 7,
                          children: [
                            Icon(Icons.verified_user),
                            CustomText(text: "1 Year Warranty")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Colors.black12,),
                  SizedBox(height: 15,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       CustomText(text: 'Description',fontWeight: FontWeight.bold,fSize: 22,),
                       SizedBox(height: 10,),
                       CustomText(text: "Enjoy powerful sound and deep bass with  Apex Smart Watch.",fSize: 15,fontWeight: FontWeight.bold,mxLine: 2,),
                       CustomText(text: "Designed for comfort and long-lasting performance.",fSize: 15,fontWeight: FontWeight.bold,mxLine: 2,),
                       CustomText(text: "Perfect for music lovers on the go.",fSize: 15,fontWeight: FontWeight.bold,mxLine: 2,),
        
        
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           SizedBox(width: 100,
                             child: CustomText(text: "Brand",fontWeight: FontWeight.w600,),
                           ),
                           CustomText(text: ":Apex",fontWeight: FontWeight.w600,),
                         ],
                       ),
                       SizedBox(height: 8,),
                       Row(
                         children: [
                           SizedBox(width: 100,
                             child: CustomText(text: "Model",fontWeight: FontWeight.w600,),
                           ),
                           CustomText(text: ": Ax 520 prime model",fontWeight: FontWeight.w600,),
                         ],
                       ),
                       SizedBox(height: 8,),
                       Row(
                         children: [
                           SizedBox(width: 100,
                             child: CustomText(text: " Battery",fontWeight: FontWeight.w600,),
                           ),
                           CustomText(text: ": Up to 15 Hours",fontWeight: FontWeight.w600,)
                         ],
                       ),
                       SizedBox(height: 8,),
                       Row(
                         children: [
                           SizedBox(width: 100,
                             child: CustomText(text: "Connectivity",fontWeight: FontWeight.w600,),
                           ),
                           CustomText(text: ": Bluetooth",fontWeight: FontWeight.w600,)
                         ],
                       ),
                       SizedBox(height: 8,),
                       Row(
                         children: [
                           SizedBox(width: 100,
                             child: CustomText(text: "Warranty"),
                           ),
                           CustomText(text: ": 1 Year")
                           
                         ],
                       )
                       
                       
                     ],
        
                   ),
        
                ],
              ),
        
            ],
        
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(

          children: [
            CustomButton(title: 'Add Order',isEmptyBG: true, onTap: () {  },),
            SizedBox(width: 20,),
            CustomButton(title: 'Buy Now', onTap: () {  },),
          ],
        ),
      ),

    );
  }
}




