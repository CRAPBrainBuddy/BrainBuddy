import 'package:flutter/material.dart';

class MyBooking extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff302b63).withOpacity(0.6),
      appBar: AppBar(
        backgroundColor: Color(0xff302b63).withOpacity(1),
        title: Center(child: Text('My Bookings',style: TextStyle(color: Colors.black),)),
      ),
      body: Container(
        child: Center(
          child: Text('You Have No Bookings',style: TextStyle(fontSize: 20,color: Colors.white38),),
        ),
      ),
    );
  }
}
