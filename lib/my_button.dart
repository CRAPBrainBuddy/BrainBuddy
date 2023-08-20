import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(color: Color(0XFFFF8000),borderRadius: BorderRadius.circular(16)),
        child: Center(child: Text('Sign In', style:
        TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16),),),
      ),
    );
  }
}
