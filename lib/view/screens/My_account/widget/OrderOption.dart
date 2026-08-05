import 'package:flutter/material.dart';
class OrderOption extends StatelessWidget {
  final IconData icon;
  final String  label;
  final VoidCallback? onTap;
  const OrderOption({super.key, required this.icon, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 28,
            color: Colors.black54,
          ),
          SizedBox(height: 6,),
          Text(label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black87
          ),
          )
        ],
      ),
    );
  }
}
