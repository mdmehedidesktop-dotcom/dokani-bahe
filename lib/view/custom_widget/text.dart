import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.mxLine, this.color, this.fSize, this.fontWeight, this.tOverflow, this.tDeco});


  final String text;
  final int? mxLine;
  final Color? color;
  final double? fSize;
  final FontWeight?fontWeight;
  final TextOverflow?tOverflow;
  final TextDecoration? tDeco;




  @override
  Widget build(BuildContext context) {
    return Text(
        text,

      maxLines: mxLine??1,


      style: TextStyle(

        color: color?? Colors.black,
        fontSize: fSize??12,
        fontWeight:fontWeight?? FontWeight.w400,
        overflow: tOverflow??TextOverflow.ellipsis,
        decoration: tDeco??TextDecoration.none

      ),
    );
  }
}
