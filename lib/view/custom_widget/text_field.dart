import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
    required this.email,required this.hint,this.mLine,this.icon,this.suffixIcon
  });

  TextEditingController email;

  String hint;

  int?mLine;


  final IconData? icon;

  final IconData ? suffixIcon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: mLine ?? 1,
        controller: email ,
        decoration: InputDecoration(
            labelText: hint,
            suffixIcon:suffixIcon != null ? Icon(suffixIcon) :null,
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),

      ),
    );
  }
}