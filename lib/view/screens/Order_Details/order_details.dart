import 'package:flutter/material.dart';
class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.headphones),
          SizedBox(width: 15,)
        ],

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Order ID",style: TextStyle(color: Colors.grey),),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Delivered",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 12),),
                  )
                ],
              ),
              Text("#DB123456",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order Date",style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 10,),
                  Text("20 May,2025",style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 10,),
                  Text("10:30 AM")

                ],
              )
            ],
          ),
          

        ),

      ),
    );
  }
}
