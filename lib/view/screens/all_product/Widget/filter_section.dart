

import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';
class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 5,
          children: [
            Icon(Icons.tune,size: 15,),
            CustomText(text: "Filter",fontWeight: FontWeight.bold,)
          ],

        ),
        Row(
          spacing: 5,
          children: [
            CustomText(text: "Short By ",fontWeight: FontWeight.bold,),
            Icon(Icons. keyboard_arrow_down_rounded,size: 15,),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Icon(Icons.grid_view,size: 15,),
            CustomText(text: "Grid",fontWeight: FontWeight.bold,)
          ],

        ),
      ],
    );
  }
}