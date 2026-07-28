import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/home/widget/category_widget.dart';

import '../../custom_widget/slider.dart';
import '../../custom_widget/title_heading.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List categoryName=[
    {
      'title': 'Men Fashion',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVHnlbX64KPSB3FBHfSSg8YmSW-SbDP0-weA&s',
    },
    {
      'title': 'Women Fashion',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkkqUo_Rr0rc1iuIoWVTgD44GIIbYJK9XCg&s',
    },
    {
      'title':'Shoes',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTQlPzVsmFINVkEqObdG0EJG_eylURr-vkXQ&s',
    },
    {
      'title':'Bags',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfW9tff5TRFsvr8lLceiCXau911UPzKbIhBw&s',
    },
    {
      'title': "Electronics",
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvgkp1exAI9zCy2HW7c7hmweiHyhEcQkhJtw&s',
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(title:Row(
        spacing: 10,
        children: [
          CustomText(text: "Dokani ",fontWeight: FontWeight.bold,fSize: 25,color: Color(0Xff3808BF),),
          CustomText(text: "Bahe ",fontWeight: FontWeight.bold,fSize: 25,color: Colors.orangeAccent,),
        ],
      ) ,actions: [
        Badge(
          label: Text("0"),
          backgroundColor: Colors.orangeAccent,
          textColor: Colors.white,
          child:Icon(Icons.shopping_cart_outlined), 
        ),
        
        SizedBox(width: 10,),
      ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          spacing: 8,
          children: [
            SearchWidget(),
            CustomSlider(),
            TitleHeading(text: 'Categories', onTap: () {  },),

            SizedBox(
              height: 120,
              child: ListView.builder(

                scrollDirection: Axis.horizontal,
                itemCount: categoryName.length,
                itemBuilder:(context,i)=>CatergoryWidget(title: categoryName[i]['title'],
                  imagePath : categoryName[i]['image'],
                ),
              ),
            ),
            
            







            TitleHeading(text: 'Featured Product', onTap: () {  },),
            TitleHeading(text: 'New Arrivals', onTap: () {  },),
            TitleHeading(text: 'Best Seller Product', onTap: () {  },),
            TitleHeading(text: 'Top Trending Product', onTap: () {  },)


          ],
        ),
      ),

    );
  }
}






