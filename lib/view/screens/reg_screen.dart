import 'package:flutter/material.dart';
import 'package:project_3/view/screens/widget/custom_text_field.dart';
class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(leading: Icon(Icons.arrow_back),),
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Sign up to ge started",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),
              CustomTextField(label: "Full Name", initialValue: "Mehedi Hasan",prefixIcon: Icon(Icons.person),),
              
              CustomTextField(label: "Phone Number", initialValue: "+880 01610143246",prefixIcon: Icon(Icons.contact_phone),),
              CustomTextField(label: "Email Address", initialValue: "mdmehedidesktop@gmail.com",prefixIcon: Icon(Icons.email),),
              CustomTextField(label: "Password", initialValue: "123456",prefixIcon: Icon(Icons.lock,),suffixIcon:
              InkWell(
                onTap: (){},
                  child:
                  Icon(Icons.remove_red_eye)),)



            ],
          ),
        ),
      ),
    );
  }
}
