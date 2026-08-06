import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/Order_Success/widget/Custom_Button.dart';
class CheckOut extends StatefulWidget {
  const CheckOut({super.key});
  

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  String selectedPayment = "bKash";
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(title: CustomText(text: "Checkout",fontWeight: FontWeight.bold,fSize: 18,),
          leading: Icon(Icons.arrow_back),
        
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
                    CustomText(text: "Delivery Address",fontWeight: FontWeight.bold,fSize: 17,),
                    SizedBox(height: 7,),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5,),
                        CustomText(text: "Mehedi Hasan",fSize: 14,fontWeight: FontWeight.bold,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                        padding: EdgeInsets.only(left: 29),
                      child: CustomText(text: "House 15,Road 5,Sector 9",fSize: 12,color: Colors.grey,),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 29),
                      child: CustomText(text: "Uttara,Dhaka 1230",fSize: 15,color: Colors.grey,),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 29),
                      child: CustomText(text: "+880 1234564",fSize: 15,color: Colors.grey,),
                    ),
                    SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(text: "Change",fSize: 15,color: AppColor.primaryColor,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
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
                    CustomText(
                      text: "Payment Method",
                      fontWeight: FontWeight.bold,
                      fSize: 17,
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Radio<String>(
                            value: "bkash",
                          groupValue: selectedPayment,
                          onChanged: (String? value){
                              setState(() {
                                selectedPayment = value!;
                              });
                          }
                        ),
                        CustomText(text: "bkash"),
                        Spacer(),
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSadNY733qL7kG9AmytZOtA8riLPs9aqgwMvQ&s",
                        width: 40,
                          height: 40,
                          errorBuilder: ((context, error, stackTrace)=>SizedBox()),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Radio<String>(
                            value: "Nagad",
                            groupValue: selectedPayment,
                            onChanged: (String? value){
                              setState(() {
                                selectedPayment = value!;
                              });
                            }
                        ),
                        CustomText(text: "Nagad"),
                        Spacer(),
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpmTxJITGP-5mskplS0EOGxDND0CXsRES782PzA6XbJQ&s",
                          width: 40,
                          height: 40,
                          errorBuilder: ((context, error, stackTrace)=>SizedBox()),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                            value: "Cash on Delivery",
                            groupValue: selectedPayment,
                            onChanged: (String? value){
                              setState(() {
                                selectedPayment = value!;
                              });
                            }
                        ),
                        CustomText(text: "Cash on Delivery"),
                        Spacer(),

                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                            value: "Card",
                            groupValue: selectedPayment,
                            onChanged: (String? value){
                              setState(() {
                                selectedPayment = value!;
                              });
                            }
                        ),
                        CustomText(text: "Visa / MasterCard"),
                        Spacer(),
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1MUMXz1G7LSmOmsUgtpSVrB_aW4R79Lxv3g&s",
                          width: 40,
                          height: 30,
                          errorBuilder: ((context, error, stackTrace)=>SizedBox()),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
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
                    CustomText(text: "Order Summary",fSize: 18,fontWeight: FontWeight.bold,),
                    SizedBox(height: 7,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Subtotal(3 items)"),
                        CustomText(text: "৳ 6597")
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Shipping Charge"),
                        CustomText(text: "৳ 60")
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Discount"),
                        CustomText(text: " - ৳ 300")
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "TotalAmount"),
                        CustomText(text: "৳ 6357")
                      ],
                    ),
                  ],
                ),

              ),
              SizedBox(height: 3,),
              CustomButtonDesine(title: "Place Order", onTap: (){})
            ],
          ),
        ),
      ); 

  }
}
