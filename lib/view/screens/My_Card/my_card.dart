import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/customCart.dart';
class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      leading: Icon(Icons.arrow_back_ios_new),
        actions: [

          Icon(Icons.favorite),
          SizedBox(width: 10,),
          CustomCart(),SizedBox(width: 10,),

        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0XFFE8F5E9),
                borderRadius: BorderRadius.circular(8)
              ),

            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_circle,color: Colors.green,size: 18,),
                        SizedBox(width: 10,),
                        Text("You are ৳ 603 away from free shipping",
                          style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 13),),
                      ],
                    ),
                    Icon(Icons.local_shipping_outlined)

                  ],
                ),
              ],
            ),
            SizedBox(height: 8,),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: 0.7,
                minHeight: 6,
                backgroundColor: Color(0XFFC8E6C9),
                valueColor: AlwaysStoppedAnimation(Colors.green),
              ),
            ),
            SizedBox(height: 10,),
            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),

                itemBuilder: (context,i){
                return Padding(padding: EdgeInsets.only(bottom: 12),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                );
                } )

          ],
        ),
      ),
    );
  }
}
