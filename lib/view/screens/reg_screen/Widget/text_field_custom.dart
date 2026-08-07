import 'package:flutter/material.dart';
class Customdesine extends StatelessWidget {
  final String label;
  final String initialValue;
  final bool isDropdown;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  const Customdesine({super.key, required this.label, required this.initialValue, this.isDropdown = false, this.suffixIcon, this.prefixIcon,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,style: TextStyle(fontSize: 13,color: Colors.grey),),
          SizedBox(height: 5,),
          TextFormField(
            initialValue: initialValue,
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: Colors.grey, fontSize: 13),
              filled: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:BorderSide(color: Colors.grey.shade200,width: 1)
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,

            ),
          ),
        ],
      ),
    );
  }
}


