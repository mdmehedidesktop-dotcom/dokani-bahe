import 'package:flutter/material.dart';
import 'package:project_3/view/screens/Checkout_Screen/check_out.dart';

import 'package:project_3/view/screens/EditprodileScreen.dart';
import 'package:project_3/view/screens/Forgot_password/forgot_password.dart';
import 'package:project_3/view/screens/My_Card/my_card.dart';
import 'package:project_3/view/screens/My_Card/widget/my_cart.dart';
import 'package:project_3/view/screens/Order_Details/order_details.dart';
import 'package:project_3/view/screens/Order_Success/order_success.dart';
import 'package:project_3/view/screens/Order_Success/widget/header_widget.dart';
import 'package:project_3/view/screens/all_product/all_product.dart';
import 'package:project_3/view/screens/details/details.dart';
import 'package:project_3/view/screens/home/home.dart';
import 'package:project_3/view/screens/home/loginScreen.dart';
import 'package:project_3/view/screens/My_account/my_account.dart';
import 'package:project_3/view/screens/my_order/my_order.dart';
import 'package:project_3/view/screens/my_order/widget/order_widget.dart';
import 'package:project_3/view/screens/otp_page/otp_screen.dart';
import 'package:project_3/view/screens/reg_screen/reg_screen.dart';

import 'package:project_3/view/screens/splashScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  OtpScreen (),
    );
  }
}
