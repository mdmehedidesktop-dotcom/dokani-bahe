import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,

  });
  final List bannerImage =const[
    "https://dokanibahe.com/storage/banners/e5f5a18b-16f6-4c5b-ad3d-a329a0937b4b.png",
    "https://dokanibahe.com/storage/banners/f508566c-7624-4404-b485-829636c0a3f1.png",
    "https://dokanibahe.com/storage/banners/0195975a-9d96-4469-9a8d-48ecd18951aa.png",
    "https://dokanibahe.com/storage/banners/dc52f830-c324-463d-ac2b-791807456802.png",
    "https://dokanibahe.com/storage/banners/f97ba6b3-d614-46c2-b7dd-65f424af4b16.png",

  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 150.0,
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 3),
      ),
      items: bannerImage.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
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

            );
          },
        );
      }).toList(),
    );
  }
}