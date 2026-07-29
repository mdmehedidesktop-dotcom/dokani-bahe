import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/text_field.dart';
import 'package:project_3/view/custom_widget/text_widget.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
TextEditingController email =TextEditingController();
TextEditingController password =TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network("https://img.magnific.com/premium-vector/desktop-mobile-illustration-login-page-data-analysis_559664-335.jpg?semt=ais_hybrid&w=740&q=80"),
            
            MyTextWidget(title: "Login Page",tSize: 28,),
            MyTextField(email: email, hint: "Email"),
            MyTextField(email: password, hint: "Password"),
            Card(
              margin: EdgeInsets.all(8),
              color: Colors.blue,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: const EdgeInsets.all(8.0),
                    child: Text("Login",style: TextStyle(color: Colors.white,fontSize:25 ),),
                  )
                ],
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Text("Don't have an account? "),
                InkWell
                  (child: Text("Sign Up ",style: TextStyle(color: Colors.blue),))
              ],
            )
            
          ],
        ),
      ),
      
    );
  }
}
