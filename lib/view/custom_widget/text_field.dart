import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
    required this.email,required this.hint,this.mLine
  });

  TextEditingController email;

  String hint;

  int?mLine;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: mLine ?? 1,
        controller: email ,
        decoration: InputDecoration(
            labelText: hint,
            prefixIcon: Icon(hint == "Password"? Icons.lock:Icons.email),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),

      ),
    );
  }
}