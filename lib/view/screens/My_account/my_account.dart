import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/My_account/widget/OrderOption.dart';
class MyAccount extends StatefulWidget {
  const MyAccount({super.key,});

  @override
  State<MyAccount> createState() => _MyAccountState();
}


class _MyAccountState extends State<MyAccount> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "My Account",fontWeight: FontWeight.bold,fSize: 25,),
        centerTitle: true,

        actions: [
          Icon(Icons.settings),
          SizedBox(width: 10,)
        ],
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){},
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://scontent.fdac31-2.fna.fbcdn.net/v/t39.30808-1/747080002_122262478616256988_3194857478344269748_n.jpg?stp=dst-jpg_tt6&cstp=mx1234x1224&ctp=s200x200&_nc_cat=101&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeF0BVirtZhpG46ucSZ7K2JrIpD9_SE4Fq4ikP39ITgWrga4VbT0kufDh1kVFN9CNhwSK1jILLSEgXqPDxmMJDkZ&_nc_ohc=uix2DbLnE4wQ7kNvwHRPv0D&_nc_oc=AdofvNJxRM9iy-S_am3awCryLzSoGt_K1I5F4sqP6Zo0JS12nqhrCbWuv4PUjJWdwEw&_nc_zt=24&_nc_ht=scontent.fdac31-2.fna&_nc_gid=Zj52Q4hEe1qF5iilUmHd7w&_nc_ss=7c2a8&oh=00_AQFh80JKC7ffCSadq1o-Aj0DMqGCN0e46pk0zr70UwTBSw&oe=6A78A39F"),

                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Md Mehedi Hasan",fontWeight: FontWeight.bold,fSize: 18,),
                      SizedBox(height: 3,),
                      CustomText(text: "+08801610143246",fontWeight: FontWeight.bold,),
                      SizedBox(height: 3,),
                      CustomText(text: "mdmehedidesktop@gmail.com",fontWeight: FontWeight.bold,),
                    ],
                  ),
                  Icon(Icons.chevron_right),
                  SizedBox(width: 40,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            // My order section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "My Order",fSize: 16,fontWeight: FontWeight.bold,),
                TextButton(onPressed: (){}, child: CustomText(text: "View",color: AppColor.primaryColor,))
              ],
            ),
            SizedBox(height: 8,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              // order icon gulo
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  OrderOption(icon:Icons.receipt_long_rounded,label:'processing'),
                  OrderOption(icon:Icons.shopping_bag_outlined,label:'Shipped'),
                  OrderOption(icon:Icons.check_circle_outline,label:'Delivered'),
                  OrderOption(icon:Icons.cancel_outlined,label:'Cancelled'),
                ],
              ),
              
            ),
            SizedBox(height: 20,),
            Divider(),
            CustomText(text: "Account Settings",fontWeight: FontWeight.bold,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 12,),
                    CustomText(text: "Edit Profile",fontWeight: FontWeight.bold,),
                  ],
                ),
                Icon(Icons.chevron_right)],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 12,),
                    CustomText(text: "Adderesses",fontWeight: FontWeight.bold,)
                  ],
                ),
                Icon(Icons.chevron_right)],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.credit_card),
                    SizedBox(width: 12,),
                    CustomText(text: "Payment Methods",fontWeight: FontWeight.bold,)
                  ],
                ),
                Icon(Icons.chevron_right)
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.lock),
                    SizedBox(width: 12,),
                    CustomText(text: "Change Password",fontWeight: FontWeight.bold,)
                  ],
                ),
                Icon(Icons.chevron_right)
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 12,),
                    CustomText(text: "Notification",fontWeight: FontWeight.bold,)
                  ],
                ),
                Icon(Icons.chevron_right)
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(width: 12,),
                    CustomText(text: "Help & Support",fontWeight: FontWeight.bold,)
                  ],
                ),
                Icon(Icons.chevron_right)
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(width: 12,),
                    CustomText(text: "About Us",fontWeight: FontWeight.bold,)
                  ],
                ),
                Icon(Icons.chevron_right)
              ],
            ),
            Divider(),
            //log out button

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.logout,color: Colors.red,),
                    SizedBox(width: 12,),
                    CustomText(text: "Logout",fontWeight: FontWeight.bold,color: AppColor.primaryColor,)
                  ],
                ),
                Icon(Icons.chevron_right)
              ],
            )
          ],
        ),
      ) ,
    );
  }
}
