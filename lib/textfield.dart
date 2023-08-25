import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  bool validate = false;
  final String hintText;
  final bool obsecureText;
  MyTextField({
  super.key,
  required this.controller,
  required this.hintText,
  required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: 300,
        child: TextField(
          controller: controller,
          obscureText: obsecureText,
          decoration: InputDecoration(
            errorText: validate ? 'Value can not be empty':null,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff302b63),width: 1.0,),
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding: EdgeInsets.all(13),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              fillColor: Colors.white38,
              filled: true,
              hintText:hintText,
          ),
        ),
      ),
    );
  }
}
