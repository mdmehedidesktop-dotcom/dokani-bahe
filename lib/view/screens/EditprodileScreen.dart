import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/text.dart';
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF9F9F9),
      appBar: AppBar( title:CustomText(text: "Edit Profile",fontWeight: FontWeight.bold,),
        leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,))
      ),
      body: Column(
        children: [
          Card(

          )

        ],
      ),
    );
  }
}
