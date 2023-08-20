import 'package:flutter/material.dart';

class Premium extends StatelessWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('this is premium page')
        ],
      ),
    );
  }
}
