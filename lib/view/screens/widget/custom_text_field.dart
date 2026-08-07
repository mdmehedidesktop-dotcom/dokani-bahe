import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String label;
  final String initialValue;
  final bool isDropdown;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  const CustomTextField({super.key, required this.label, required this.initialValue, this.isDropdown = false, this.suffixIcon, this.prefixIcon,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: TextFormField(
        initialValue: initialValue,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 13),
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: isDropdown
              ? const Icon(Icons.keyboard_arrow_down, color: Colors.grey)
              : null,
        ),
      ),
    );
  }
}


