import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/all_product/all_product.dart';
import 'package:project_3/view/screens/home/widget/category_widget.dart';
import 'package:project_3/view/screens/home/widget/featured_card.dart';

import '../../custom_widget/customCart.dart';
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
  List  featureProducts =[
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfu9XoC11SfKKnq4f2JPChsVCD9dUji8snog&s",
      "name": "Sony WH-1000XM5",
      "price": "৳ 1299",
      "old": "৳ 2599",
      "offer": "-50%",
    },
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFXoZuDY0rwD8rIVg0avDzXakNRnlxhI5bGw&s",
      "name": "T900 Smart Watch",
      "price": "৳ 1899",
      "old": "৳ 2499",
      "offer": "-24%",
    },


    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRd4au81F1qY-G5vo8HsvZD8MXa0sUY-Qq4w&s",
      "name": "Leather Bag",
      "price": "৳ 2199",
      "old": "৳ 2999",
      "offer": "-27%",
    },
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEz9vQ5c3zqSXCpoY8BZhRX8pcYKJvNYzJtA&s",
      "name": "Samsung A36",
      "price": "৳ 32999",
      "old": "৳ 34999",
      "offer": "-6%",
    },
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSsVzBQSkj9Zq7Xx1-P0ogukodrBmt_O9f3w&s",
      "name": "Luxury Perfume",
      "price": "৳ 999",
      "old": "৳ 1499",
      "offer": "-33%",
    },
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZrfNIxaNcy8-gjahJowDFvV7mR4sCtXGdEA&s",
      "name": "HP Pavilion",
      "price": "৳ 65999",
      "old": "৳ 72999",
      "offer": "-10%",
    },
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC-3IFOBgH1OYW4mJ65s4A3mgI9HMiJD-Qqw&s",
      "name": "Nike Running Shoe",
      "price": "৳ 3499",
      "old": "৳ 4499",
      "offer": "-22%",
    },
  ];
  List products = [
    {
      "name": "Classic Cotton T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT51hdjCGKepU3iLbj1fkiTIoIR8BccHKuLGA&s",
      "price": "৳899",
    },
    {
      "name": "Urban Leather Backpack",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5LrcfLUmr4UIlJNurVoJ3JzU2Zk2YGD2aJA&s",
      "price": "৳2,499",
    },
    {
      "name": "Apex Smart Watch",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrWWFEhCJvvJOZtYtmy5coTVLBJtTbtSS2ew&s",
      "price": "৳4,999",
    },
    {
      "name": "Royal Oud Perfume",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuQ2GaK3TD4uAZxlDWP-g7z1lHrQ4F8yl7cA&s",
      "price": "৳1,899",
    },
    {
      "name": "Noise Cancelling Headphones",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_EVIb8y6v_0piCEuAk-B-XKx5RkeOusyuhg&s",
      "price": "৳3,299",
    },
  ];

  List image =[


    {
      "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBfNMVEhR7_9jzJJ26Lg0ZW3j4EiHPtmMbWQ&s",
    },
    {
      "image" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc1E8vRryz1uKhCBOIyaP8PXV0PVk2-TxKCQ&s",
    },

    {
      "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRBVAb7alW1Dt7F8_ETkfnypEMuto0FlG2OQ&s",
    },
    {
      "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQahQEJ7aGvVVTFHuWFKyJHsTdpaL03GCfVKA&s",
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5yCLz0vm_34z4lCFIvc83znBShc4Qwaf6VQ&s",
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        child: ListView(


          padding: EdgeInsets.zero,

          children: [
            Padding(padding:EdgeInsets.only(left: 16,top: 40,bottom: 8),
              child: CustomText(text: "Your Profile",fSize: 16,fontWeight: FontWeight.bold,),

            ),


            UserAccountsDrawerHeader(

              accountName: CustomText(text: "Md Mehedi Hasan"),
              accountEmail:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(text: "mdmehedidesktop@gmail.com"),
                  SizedBox(height: 4,),
                  CustomText(text: "01610143246")
                ],
              ),

              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://scontent.fdac31-2.fna.fbcdn.net/v/t39.30808-6/747080002_122262478616256988_3194857478344269748_n.jpg?stp=dst-jpg_tt6&cstp=mx1234x1224&ctp=p526x296&_nc_cat=101&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF0BVirtZhpG46ucSZ7K2JrIpD9_SE4Fq4ikP39ITgWrga4VbT0kufDh1kVFN9CNhwSK1jILLSEgXqPDxmMJDkZ&_nc_ohc=HzUmNNIumU0Q7kNvwHnvR4W&_nc_oc=AdqhRV31cWYJoSgsuU1oLjhpW36aSXPZwU1N2jCfYWNmgQGYgtNLHot-aKzDPcZtBuc&_nc_zt=23&_nc_ht=scontent.fdac31-2.fna&_nc_gid=jwAyFhQEfYD4SBE17WdluA&_nc_ss=7c2a8&oh=00_AQAErfE1sBsuFabv2mhdxS2ZGQjWBh5vzlztZV7kS_o8MQ&oe=6A6E683C"),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('My Order'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Wishlist"),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.red,),
              title: Text('Logout',style: TextStyle(color: Colors.red),),
              onTap: (){},
            )
          ],
        ),
      ),
      appBar: AppBar(title:Row(
        spacing: 10,
        children: [
          CustomText(text: "Dokani ",fontWeight: FontWeight.bold,fSize: 25,color: Color(0Xff3808BF),),
          CustomText(text: "Bahe ",fontWeight: FontWeight.bold,fSize: 25,color: Colors.orangeAccent,),
        ],
      ) ,actions: [
        CustomCart(),
        
        SizedBox(width: 10,),
      ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListView(

          children: [
            SearchWidget(),
            CustomSlider(),
            TitleHeading(text: 'Categories', onTap: () {  },),

            categories(),
            
            TitleHeading(text: 'Featured Product', onTap: () { 
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProduct(featureProducts:featureProducts)));
            },),
            
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: featureProducts.length,
                shrinkWrap: true,
                  itemBuilder:(context,i)=>
              SizedBox(
                height: 100,
                width: 111,
                child: FeaturedCard(featureProducts: featureProducts,
                  i:i,

                ),

              ),
              ),
            ),
            
            TitleHeading(text: 'New Arrivals', onTap: () {  },),

            SizedBox(
              height: 210,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                shrinkWrap: true,
                  itemBuilder: (context,i)=>
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                            image: NetworkImage(products[i]['image'])),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Align(
                            alignment: Alignment.centerLeft,
                            child: CustomText(text: products[i]['name'],fontWeight: FontWeight.bold,),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child:CustomText(text: products[i]['price'],fontWeight: FontWeight.bold,) ,
                          )
                        ],
                      ),
                    )

                  ],
                ),

              )),
            ),


            TitleHeading(text: 'Best Seller Product', onTap: () {  },),

            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: image.length,
                  itemBuilder: (context,i)=>Card(
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                            image:  DecorationImage(
                              fit: BoxFit.fill,
                                image: NetworkImage(image[i]["image"]))
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            


          ],
        ),
      ),

      

    );
  }

  SizedBox categories() {
    return SizedBox(
            height: 120,
            child: ListView.builder(

              scrollDirection: Axis.horizontal,
              itemCount: categoryName.length,
              itemBuilder:(context,i)=>CatergoryWidget(title: categoryName[i]['title'],
                imagePath : categoryName[i]['image'],
              ),
            ),
          );
  }
}










