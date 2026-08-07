import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/widget/custom_text_field.dart';

import '../reg_screen/Widget/text_field_custom.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("Login to continue shopping",style: TextStyle(color: Colors.grey),),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx8rwiDY5iQYcawJjMlhhMBPeLsErdUhKs3Q&s",

                    height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  )
                )
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Customdesine(label: 'Phone Number', initialValue: '+880 01610143246',prefixIcon: Icon(Icons.contact_phone),),
                Customdesine(label: "PassWord", initialValue: "123456",prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.remove_red_eye),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(text: "Forgot Password?",color: AppColor.primaryColor,)
                
              ],
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrange
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Login",style: TextStyle(color: Colors.white),)

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey,thickness: 0.5,)),
                Padding(padding:
                EdgeInsets.symmetric(horizontal: 10),
                  child: Text("or continue with",style: TextStyle(color: Colors.grey,fontSize: 12),),
                ),
                Expanded(child: Divider(color: Colors.grey,thickness: 0.5,))
              ],
            ),
            SizedBox(height: 11,),
            
            Row(
              children: [
                Expanded(child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBvmX00xQVWqrqIN5tJWMNmlzxapcj9c9DnA&s",height: 20,),
                      SizedBox(width: 7,),
                      Text("Google",style: TextStyle(fontWeight:FontWeight.w500),)
                    ],
                  ),
                )),
                SizedBox(width: 7,),
                Expanded(child: Container(
                  
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook,color: Colors.blue,size: 22,),
                      SizedBox(width: 8,),
                      Text("Facebook",style: TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have a account?"),
                CustomText(text: "Register",color: AppColor.primaryColor,fSize: 14,)

              ],
            )

          ],

        ),
      ),
    );
  }
}
