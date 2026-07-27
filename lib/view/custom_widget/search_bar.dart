import 'package:flutter/material.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal:5,vertical: 0 ),
        labelText: "Search for Products",
        suffixIcon: Icon(Icons.search),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        )
      ),
    );
  }
}
