import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
class MyOrderCard extends StatelessWidget {
  final String orderId;
  final String itemCount;
  final String date;
  final String status;
  final String totalPrice;
  final Color statusColor;
  final Color StatusTextColor;
  final String paymentMethod;
  final VoidCallback onViewDetails;
  final List<String> productImages;
  final String extraCount;
  const MyOrderCard({super.key, required this.orderId, required this.date, required this.status, required this.statusColor, required this.StatusTextColor, required this.paymentMethod, required this.onViewDetails, required this.productImages, required this.extraCount, required this.itemCount, required this.totalPrice});

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: const EdgeInsets.all( 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey,width: 0.8
          )
        ),



      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order ID",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  Text(orderId,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                ],
              ),
              Text(date,style: TextStyle(color: Colors.grey,fontSize: 12),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(status,
                style: TextStyle(color: StatusTextColor,fontSize: 12,fontWeight: FontWeight.bold),),
              )
            ],
          ),
          SizedBox(height: 8,),
          // item count and price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(itemCount,style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
              Text(
                totalPrice,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
              )
            ],
          ),
          SizedBox(height: 12,),
          //dynamic product image
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...productImages.map((imagePath)=>Container(
                  key: ValueKey(imagePath),
                  margin: EdgeInsets.only(right: 8),
                  width: 45,
                  height: 45,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(imagePath,
                  fit: BoxFit.contain,
                    errorBuilder: (context,error,stackTrace)=>
                    Icon(Icons.image,color: Colors.grey,),
                  ),

                )), 
                if (extraCount.isNotEmpty)
                  Padding(padding: EdgeInsets.only(left: 4),
                  child: Text(
                    extraCount,
                    style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                  ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment Method",style: TextStyle(color: Colors.grey,fontSize: 11),),
                  Text(paymentMethod, style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),)
                ],
              ),
              GestureDetector(
                onTap: onViewDetails,
                child: Text("View Details",style: TextStyle(color: AppColor.primaryColor,fontSize: 13,fontWeight: FontWeight.w500),),
              )
            ],
          )
        ],
      ),
    );
  }
}
