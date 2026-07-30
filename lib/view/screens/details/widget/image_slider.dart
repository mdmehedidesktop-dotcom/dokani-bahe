

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';
import '../details.dart';
class productimageSlider extends StatelessWidget {
  const productimageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 250.0,
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 3),
      ),
      items: bannerImage.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  alignment: Alignment.center,

                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit:BoxFit.fill,
                          image:NetworkImage(imageUrl) )
                  ),


                ),
                Card(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8),
                      child: CustomText(text: "40 % off",color: Colors.white,),
                    ))
              ],
            );
          },
        );
      }).toList(),
    );
  }
}