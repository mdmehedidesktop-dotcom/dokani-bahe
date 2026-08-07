import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/screens/widget/custom_text_field.dart';

import '../custom_widget/text.dart';
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0XFFF9F9F9),
      appBar: AppBar( title:CustomText(text: "Edit Profile",fontWeight: FontWeight.bold,),
          leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,))
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage("https://scontent.fdac31-2.fna.fbcdn.net/v/t39.30808-6/747080002_122262478616256988_3194857478344269748_n.jpg?stp=dst-jpg_tt6&cstp=mx1234x1224&ctp=p526x296&_nc_cat=101&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF0BVirtZhpG46ucSZ7K2JrIpD9_SE4Fq4ikP39ITgWrga4VbT0kufDh1kVFN9CNhwSK1jILLSEgXqPDxmMJDkZ&_nc_ohc=Q9aHdOxJXh4Q7kNvwHMHguk&_nc_oc=AdoruiIGZayv8e2fdeHSf1Ochyb83cf1UJq4KSJ9ikp-GwyeDvoLfJruiwfhKmuEyFc&_nc_zt=23&_nc_ht=scontent.fdac31-2.fna&_nc_gid=4p2upEx2DKK7aSBpkf147Q&_nc_ss=7c2a8&oh=00_AQEo1vwuRsPqUQmUdOSKC6ujEQc6EtFan4VAMAnzsY4OKA&oe=6A7A45BC"),

                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child:Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.camera_alt,color: Colors.white,size: 16,),

                        )
                    )
                  ],
                ),
                SizedBox(width: 13,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text("Mehedi Hasan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 4,),
                    Text("+880 1610143246",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 4,),
                    Text("mdmehedidesktop@gmail.com")
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Personal Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(height: 17,),
                CustomTextField(label: 'Full Name', initialValue: 'Mehedi Hasan'),
                SizedBox(height: 5,),
                CustomTextField(label: "Phone Num", initialValue: '01610143246'),
                SizedBox(height: 5,),
                CustomTextField(label: "Email Address", initialValue: "mdmehedidesktop@gmail.com"),
                SizedBox(height: 5,),
                CustomTextField(label: "Date of Birth", initialValue: "02-09-2007")

              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Address",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                CustomTextField(label: "Full Address", initialValue: "House 12,Road 5,Sector 9, Uttara"),

                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(child: CustomTextField(label: "City", initialValue: "Dhaka")),
                    SizedBox(width: 5,),
                    Expanded(child: CustomTextField(label: "Postal Code", initialValue: "1230"))

                  ],
                ),
                SizedBox(height: 5,),
                CustomTextField(label: "Country", initialValue: "Bangladesh")
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Account Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Password"),
                    Icon(Icons.chevron_right)
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            
          ],
        )


      ),
    );
  }
}
