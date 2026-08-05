import 'package:flutter/material.dart';
import 'package:project_3/view/screens/Order_Success/widget/header_widget.dart';
class OrderSuccess extends StatefulWidget {
  const OrderSuccess({super.key});

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF8FAFC),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 250,
            child: SuccessHeader(),
            )
          ],
        ),
      )),

    );
  }
}
