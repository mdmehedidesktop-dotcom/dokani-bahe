import 'package:flutter/material.dart';
class CustomCart extends StatelessWidget {
  const CustomCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: Text("0"),
      backgroundColor: Colors.orangeAccent,
      textColor: Colors.white,
      child:Icon(Icons.shopping_cart_outlined),
    );
  }
}