import 'package:flutter/material.dart';

class Activity_detail extends StatelessWidget {
  final String child;

  Activity_detail({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      width: 220,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black26,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.black26,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.image,size: 50,),
          Center(
              child: Text(child,
            style: TextStyle(color: Colors.white),
          )),
        ],
      ),
    );
    // return  Container(
    //   decoration: BoxDecoration(
    //     border:Border.all(color: Colors.white),
    //   ),
    //   height: 5,
    //   width: 300,
    // );
  }
}
