
import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';

class CatergoryWidget extends StatelessWidget {
  const CatergoryWidget({
    super.key,required this.title,required this.imagePath
  });
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        spacing: 8,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 30,backgroundImage: NetworkImage(imagePath),
          ),
          CustomText(text: title,
            fontWeight: FontWeight.bold,)
        ],
      ),
    );
  }
}