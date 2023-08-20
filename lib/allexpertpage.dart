import 'package:flutter/material.dart';
import 'package:brainbuddy/expertlist.dart';

class AllExpertList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5a5482),
      // backgroundColor: Colors.black12,
      // backgroundColor: Color(0xff302b63).withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Color(0xff302b63),
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('All Experts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              // Align(
              //   alignment: Alignment.topCenter,
              //     child: Text('Our Experts',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              Container(child: ExpertList())
            ],
          ),
        ),
      ),
    );
  }
}
