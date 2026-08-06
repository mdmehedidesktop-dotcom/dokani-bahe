import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/customCart.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/My_Card/widget/my_cart.dart';
import 'package:project_3/view/screens/Order_Success/widget/Custom_Button.dart';
class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "My Cart",fontWeight: FontWeight.bold,fSize: 18,),
      leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.favorite),
          SizedBox(width: 10,),
          CustomCart(),
          SizedBox(width: 10,)
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(Icons.check_circle_outline,color: Colors.green,size: 20,),
                    SizedBox(width: 8,),
                    Expanded(child: Text.rich(
                        TextSpan(
                          text: 'You are',
                          children:[
                            TextSpan(
                              text: '৳ 603',style: TextStyle(fontWeight: FontWeight.bold)
                            ),
                            TextSpan(text: 'away from free shipping !'),
                          ]
                        ),
                      style: TextStyle(fontSize: 13),
                    )),
                    Icon(Icons.local_shipping_outlined)
                  ],
                ),
                SizedBox(height: 5,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: LinearProgressIndicator(
                    value: 0.9,
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          CartItemCard(
              title: "XTREME X200 RGB",
              price: "2499",
              imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNcB_22tbOpL0L0BDO_yj-C-B-V8XNv9a5gg&s",
              quantity: 1,
            onIncrement: (){},
            onDecrement: (){},
            onDelete: (){},
          ),
          CartItemCard(
            title: "Apex",
            price: "3099",
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfE0aNqdIETB55uAtsxtIGm_9MvhFkqnW2RA&s",
            quantity: 1,
            onIncrement: (){},
            onDecrement: (){},
            onDelete: (){},
          ),
          CartItemCard(
            title: "Buy Iphone Charger",
            price: "7999",
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMJvWscuGdJSqvD-XPmGWOXzKvnWZc3rCP0w&s",
            quantity: 1,
            onIncrement: (){},
            onDecrement: (){},
            onDelete: (){},
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.confirmation_num_outlined),
                    SizedBox(width: 5,),
                    Text("Have a coupon code?")
                  ],
                  
                ),
                CustomText(text: "Apply",color: AppColor.primaryColor,)
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal (3 Item)"),
                    Text("৳ 6597")
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping Charge"),
                    Text("৳ 60")
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount"),
                    Text("- ৳ 300")
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("৳ 6357",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                  ],
                )
              ],

            ),
          ),
          SizedBox(height: 7,),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
             child: CustomButtonDesine(title:"Proceed to Checkout", onTap: (){}),
           )
        ],
      ),
    );
  }
}
