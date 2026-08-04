import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/custom_button.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 40, bottom: 8),
              child: CustomText(
                text: "Your Profile",
                fSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            UserAccountsDrawerHeader(
              accountName: CustomText(text: "Md Mehedi Hasan"),
              accountEmail: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(text: "mdmehedidesktop@gmail.com"),
                  SizedBox(height: 4),
                  CustomText(text: "01610143246"),
                ],
              ),

              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://scontent.fdac31-2.fna.fbcdn.net/v/t39.30808-6/747080002_122262478616256988_3194857478344269748_n.jpg?stp=dst-jpg_tt6&cstp=mx1234x1224&ctp=p526x296&_nc_cat=101&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF0BVirtZhpG46ucSZ7K2JrIpD9_SE4Fq4ikP39ITgWrga4VbT0kufDh1kVFN9CNhwSK1jILLSEgXqPDxmMJDkZ&_nc_ohc=HzUmNNIumU0Q7kNvwHnvR4W&_nc_oc=AdqhRV31cWYJoSgsuU1oLjhpW36aSXPZwU1N2jCfYWNmgQGYgtNLHot-aKzDPcZtBuc&_nc_zt=23&_nc_ht=scontent.fdac31-2.fna&_nc_gid=jwAyFhQEfYD4SBE17WdluA&_nc_ss=7c2a8&oh=00_AQAErfE1sBsuFabv2mhdxS2ZGQjWBh5vzlztZV7kS_o8MQ&oe=6A6E683C",
                ),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('My Order'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Wishlist"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          spacing: 10,
          children: [
            CustomText(
              text: "Dokani ",
              fontWeight: FontWeight.bold,
              fSize: 25,
              color: Color(0Xff3808BF),
            ),
            CustomText(
              text: "Bahe ",
              fontWeight: FontWeight.bold,
              fSize: 25,
              color: Colors.orangeAccent,
            ),
          ],
        ),
        actions: [CustomCart(), SizedBox(width: 10)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListView(
          children: [
            SearchWidget(),
            CustomSlider(),
            TitleHeading(text: 'Categories', onTap: () {}),

            categories(),

            TitleHeading(text: 'Featured Product', onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProduct()));
            }),
            SizedBox(
              height: 210,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, i) =>
                    SizedBox(height: 100, width: 120, child: FeaturedCard()),
              ),
            ),

            TitleHeading(text: 'New Arrivals', onTap: () {}),
            SizedBox(
              height: 190,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, i) => SizedBox(
                  height: 100,
                  width: 120,
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          margin: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTejCIOPBQ0qCPJ81MF1J9k2i2GiZm-aO9qFw&s",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "Polo T Shirt",
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: "৳ 2050",
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            TitleHeading(text: 'Best Seller Product', onTap: () {}),
            SizedBox(
              height: 140,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, i) => SizedBox(
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: 100,
                          margin: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfUmRYiHeNbOytuQjy2jRzdKxnPE35nJeyDw&s",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            TitleHeading(text: 'Top Trending Products', onTap: () {}),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, i) => SizedBox(child: Card(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdyhIMGyiWx3QNipncmFRffvX80-oyD4Bx1Q&s"))
                        ),
                      ),
                      Padding(

                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Shoes",fontWeight: FontWeight.bold,),
                            Row(
                              spacing: 7,
                              children: [
                                Icon(Icons.star,color: Colors.yellow,),
                                CustomText(text: "4.9",color: AppColor.primaryColor,),
                                CustomText(text: "(259)",color: Colors.black38,),
                              ],
                            )
                          ],

                        ),
                      )
                    ],
                  ),
                )),
              ),
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
        itemCount: 10,
        itemBuilder: (context, i) => CatergoryWidget(
          title: "Electronic",
          imagePath:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDF9V0qsYJ--9pGuz1vX3AA6O5OUf_j094wQ&s",
        ),
      ),
    );
  }
}
