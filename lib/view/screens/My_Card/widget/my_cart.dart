import 'package:flutter/material.dart';
class CartItemCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final int quantity;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;
  final VoidCallback? onDelete;
  const CartItemCard({super.key, required this.title, required this.price, required this.imageUrl, required this.quantity, this.onIncrement, this.onDecrement, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container (
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200)
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
              errorBuilder: ((context,error,stackTrace)=>Container(
                height: 70,
                width: 70,
                color: Colors.grey.shade200,
                child:  Icon(Icons.image,color: Colors.grey,),
              )),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8,),
                  Text(" ৳ $price",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: onDecrement,
                              child: Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(Icons.remove,size: 14,),
                              ),
                            ),
                            Text("$quantity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                            ),
                            InkWell(
                              onTap: onIncrement,
                              child: Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(Icons.add,size: 14,),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )

                ],
              )
          ),
          IconButton(onPressed: onDelete, icon:Icon(Icons.delete_outline,color: Colors.grey,size: 20,))
        ],
      ),
    );
  }
}
