import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/reg_screen/Widget/text_field_custom.dart';
class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                      color: Color(0XffDCF5DC),
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.lock_outline_rounded,color: Color(0Xff0EC20E),),
                  ),
                  Positioned(
                    right: 4,
                      bottom: 4,

                      child:Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(color: Color(0Xff1F9C31),shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 2)
                        ),
                        child: Icon(Icons.check),

                      ) )
                ],
              ),
              SizedBox(height: 15,),
              CustomText(text: "Set New Password",fSize: 25,fontWeight: FontWeight.bold,),
              CustomText(text: "Create a new password for your account.",fSize: 18,color: Colors.black87,),
              Customdesine(label: "New Password", initialValue: "123456",prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.remove_red_eye),),
              Customdesine(label: "Confirm New Password", initialValue: "123456",prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.remove_red_eye),),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0XffB4D4B4)
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.check_circle,color: Colors.green,size: 20,),
                          SizedBox(width: 5,),
                          CustomText(text: "At least 8 characters",fSize: 16,fontWeight: FontWeight.bold,)

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.check_circle,color: Colors.green,size: 20,),
                          SizedBox(width: 5,),
                          CustomText(text: "One uppercase letter",fSize: 16,fontWeight: FontWeight.bold,)

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.check_circle,color: Colors.green,size: 20,),
                          SizedBox(width: 5,),
                          CustomText(text: "One number",fSize: 16,fontWeight: FontWeight.bold,)

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.check_circle,color: Colors.green,size: 20,),
                          SizedBox(width: 5,),
                          CustomText(text: "One special character",fSize: 16,fontWeight: FontWeight.bold,)

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Reset Password",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "Back to Login",fSize: 20,color: AppColor.primaryColor,)
                ],
              )
            ],

          ),
        ),
      )),
    );
  }
}
