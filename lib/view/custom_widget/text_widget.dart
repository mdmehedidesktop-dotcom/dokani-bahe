

import 'package:flutter/material.dart';
class MyTextWidget extends StatelessWidget {
  MyTextWidget({
    super.key,required this.title, this.tSize, this.tColor,this.tmxLines
  });

  String title;
  double? tSize;
  Color? tColor;
  int? tmxLines;

  @override
  Widget build(BuildContext context) {
    return Text(title,maxLines : tmxLines ,
      overflow : TextOverflow.ellipsis ,
      style: TextStyle(color: tColor?? Colors.blue ,fontSize: tSize),);
  }
}