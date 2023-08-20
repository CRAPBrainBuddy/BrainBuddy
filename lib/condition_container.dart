import 'package:flutter/material.dart';

class Condition_container extends StatelessWidget {
  final child;

  Condition_container({required this.child});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          margin:EdgeInsets.all(10.0),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black12,
      borderRadius: BorderRadius.circular(10.0),
      border:Border.all()
      ),
        child: Center(child: Text(child,textAlign: TextAlign.center,)),
      ),
    );
  }
}
