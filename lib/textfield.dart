import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  const MyTextField({
  super.key,
  required this.controller,
  required this.hintText,
  required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFF8000),width: 1.0,),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            fillColor: Colors.white38,
            filled: true,
            hintText:hintText,
        ),
      ),
    );
  }
}
