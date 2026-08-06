import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/text.dart';
class CustomButtonDesine extends StatelessWidget {
  const CustomButtonDesine({super.key, this.isEmptyBG, required this.title, required this.onTap});
  
  
  
  final bool? isEmptyBG;
  final String title;
  final VoidCallback onTap;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.primaryColor,width: 2),
          color: isEmptyBG == true?null:AppColor.primaryColor,
          borderRadius: BorderRadius.circular(10)
        ),
        alignment: Alignment.center,
        child: CustomText(text: title,color: isEmptyBG==true? AppColor.primaryColor:Colors.white,),
      ),
    );
  }
}
