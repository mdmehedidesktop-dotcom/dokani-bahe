import 'package:flutter/material.dart';
import 'package:project_3/view/screens/Order_Success/widget/header_widget.dart';
class OrderSuccess extends StatefulWidget {
  const OrderSuccess({super.key});

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF8FAFC),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 290,
            child: SuccessHeader(),
            ),
            SizedBox(height: 6,),
            Container(
              width: double.infinity,
              height: 230,
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200),

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order ID",
                  style: TextStyle(fontSize: 16,color: Colors.grey),
                  ),
                  SizedBox(height: 13,),
                  Text("#DB123456",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Date",style: TextStyle(
                        fontSize: 16,color: Colors.grey,),),
                      Text("20 May 2025",style: TextStyle(fontSize: 16,color: Colors.grey),)
                    ],
                  ),
                  Divider(),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Amount",style: TextStyle(fontSize: 18),),
                      Text("৳ 6,357",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Method",style: TextStyle(fontSize: 16,color: Colors.black54),),
                      Text("bkash",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 16)),
                  Text("What's Next?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.email),
                      ),
                      SizedBox(width: 10,),
                      Text("We have sent an order confirmation\n to your email.")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.info),

                      ),
                      SizedBox(width: 10,),
                      Text("You can check your order status\n from Orders section")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person_outline),
                      ),
                      SizedBox(width: 10,),
                      Text("Our team will contact you if needed.")
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      )),

    );
  }
}
