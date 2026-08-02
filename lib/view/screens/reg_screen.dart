import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/text_field.dart';
class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {

  TextEditingController name =TextEditingController();
  TextEditingController email =TextEditingController();
  TextEditingController phone =TextEditingController();
  TextEditingController password = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("REGISTER PAGE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
          MyTextField(email: name, hint: "Enter your Name",icon: Icons.person,),
          MyTextField(email: email, hint: "Enter your Name",icon: Icons.email,),
          MyTextField(email: phone, hint: "Enter your phone",icon: Icons.phone,),
          MyTextField(email: password, hint: "Enter your Password",icon: Icons.lock,suffixIcon: Icons.remove_red_eye,),
        ],
      ),
      
    );
  }
}
