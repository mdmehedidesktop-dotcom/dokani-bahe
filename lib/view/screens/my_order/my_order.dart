import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/customCart.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/my_order/widget/order_widget.dart';
class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "My Order",fontWeight: FontWeight.bold,),
      leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,),
          CustomCart(),SizedBox(width: 10,),

        ],
      ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MyOrderCard(orderId: '#DB123456',
              date: '20 May,2025',
                          
              status: 'Processing',
              statusColor: AppColor.primaryColor,
              StatusTextColor: Colors.green,
              paymentMethod: 'bkash',
              onViewDetails: () {
                print("Clicked View Details");
              },
              productImages: [
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXZ4NsDg6wKOaF78Q6W9u5BfXfZwLpHpAZKg&s",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTCfy2n8ttUINmWV_S4Q4GXUxNpy_qlS2hnQ&s",
                          
              ],
              extraCount: '2',
              itemCount: '4 items',
              totalPrice: '৳ 4370',),
                MyOrderCard(
                  orderId: "#Xff245454",
                  date: "25 jun2026" ,
                  status: "Delivered",
                  statusColor:Colors.green ,
                  StatusTextColor:Colors.white ,
                  paymentMethod: "Nagad",
                  onViewDetails: (){
                    print("Clicked View Details");
                  },
                          
                  productImages: [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyn_JX21uDsWid9xsDLm7CxrgGhoXczmn34g&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNcB_22tbOpL0L0BDO_yj-C-B-V8XNv9a5gg&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOEyrb4xxrXu3U4N1GtKiFuSPX_KTB1E9png&s",
                  ],
                  extraCount: "2",
                  itemCount: "6 item" ,
                  totalPrice: "৳5999" ,
                ),
                MyOrderCard(
                    orderId: "331134412",
                    date: "09 Fev 2026",
                    status: "Shipped",
                    statusColor: Colors.green,
                    StatusTextColor: Colors.white,
                    paymentMethod: "Nagad",
                    onViewDetails: (){
                      print("Clicked View Details");
                    },
                    productImages: [
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTQlPzVsmFINVkEqObdG0EJG_eylURr-vkXQ&s"
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR75fZPwGch4qNyjUKlj6DQvhEgJK2oyKUbZg&s",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNtCNjQaA6W7DB2Vaycq7PY7uCTSMntq7ONw&s",
                    ],
                    extraCount: "1",
                    itemCount: "13 item",
                    totalPrice: "৳ 10099"),
                MyOrderCard(
                    orderId: "#20005354",
                    date: "05 AGU 2026",
                    status: "Delivered",
                    statusColor: Colors.green,
                    StatusTextColor: Colors.white,
                    paymentMethod: "bkash",
                    onViewDetails: (){
                      print("Clicked View Details");
                    },
                    productImages: [
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFyx6cdgEozMvHWCDvO7mR7yuyUXYPzLQQvw&s",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbCxBnWBhVZRcQxhWc4GeKr80ezQi5GIiG3A&s",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-8v6AksfHz5oPif1iM-5NZ4gSG5KrzGogA&s",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8-Bk-lKIhf8DFx4g2yfEOdGo6yLvFrh7E9A&s",
                          
                    ],
                    extraCount: "0",
                    itemCount: "09",
                    totalPrice: "৳ 20999"),
            ],
          ),
        ),
    );
  }
}
