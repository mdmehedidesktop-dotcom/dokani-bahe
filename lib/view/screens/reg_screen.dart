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
          Text("REGISTER PAGE",style: TextStyle(fontWeight: FontWeight.bold),),
          MyTextField(email: name, hint: "Enter your Name"),
          MyTextField(email: email, hint: "Enter your Name"),
          MyTextField(email: phone, hint: "Enter your phone"),
          MyTextField(email: password, hint: "Enter your Password"),
        ],
      ),
      
    );
  }
}
