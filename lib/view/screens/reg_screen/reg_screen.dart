import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';

import 'Widget/text_field_custom.dart';
class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  bool isAgreed=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 10,),
              Text("Sign up to started",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10,),
              Customdesine(label: "Full Name", initialValue: "Mehedi Hasan",prefixIcon: Icon(Icons.person),),
              Customdesine(label: "Phone Number", initialValue: "+880 1610143246",prefixIcon: Icon(Icons.contact_phone),),
              Customdesine(label: "Email Address", initialValue: "mdmehedidesktop@gmail.com",prefixIcon: Icon(Icons.email),),
              Customdesine(label: "Password", initialValue: "123456",prefixIcon: Icon(Icons.lock,),suffixIcon: Icon(Icons.remove_red_eye)),
              Customdesine(label: "Confirm Password", initialValue: "123456",prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.remove_red_eye),),
              Row(
                children: [
                  SizedBox(height: 24,
                  width: 24,
                    child: Checkbox(value: isAgreed,
                        activeColor: Color(0XFFD95F27),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                        ),
                        onChanged: (bool?value){
                      setState(() {
                        isAgreed = value ?? false;
                      });

                    }),
                  ),
                  SizedBox(width: 7,),
                  Text("I agree to the"),
                  CustomText(text: "Termds & Condition",fSize: 14,color: AppColor.primaryColor,)

                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(

                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(9)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Register",style: TextStyle(fontSize: 14,color: Colors.white),)
                    ],
                  ),
                ),
              )

            ],

          ),

        ),
      ),
    );
  }
}
