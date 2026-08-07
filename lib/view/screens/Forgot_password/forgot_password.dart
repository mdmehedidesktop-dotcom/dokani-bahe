import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';

import '../reg_screen/Widget/text_field_custom.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),),
      body: SafeArea(child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Color(0XFFFFF2ED),
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.lock_outline_rounded,size: 42,color: Color(0XFFFF5722),),
                    
                  ),
                  Positioned(
                      right: 4,
                      bottom: 4,
                      child:Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(color: Color(0XFFFF5722),
                        shape: BoxShape.circle,
                          border: Border.all(color: Colors.white,width: 2)
                        ),
                        child: Text("?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      ) )
                ],
              ),
              SizedBox(height: 20,),
              Text("Forgot Password?",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Text("Don't worry! It happens. Please enter your registered phone number or email address.",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColor.primaryColor)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: "Phone",color: AppColor.primaryColor,)
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(text: "Email",fontWeight: FontWeight.bold,fSize: 16,)
                            ],
                        ),
                      )
                    ],
                  )

                ],
              ),
              SizedBox(height: 15,),
              Customdesine(label: 'Phone Number', initialValue: '+880 1610143246',prefixIcon: Icon(Icons.contact_phone),),
              SizedBox(height: 22,),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Send OTP",style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Remember your password?",style: TextStyle(fontSize: 14),),
                  CustomText(text: "Login",color: AppColor.primaryColor,fSize: 16,)
                ],
              )

            ],
          ),
        ),
      ))
    );
  }
}
