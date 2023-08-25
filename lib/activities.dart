import 'package:flutter/material.dart';
import 'package:brainbuddy/Activity_details.dart';

class Activities extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final List _name = ['Activtiy 1', 'Activity 2','Activity 3','Activity 4','Activity 5'];
    final List _image = ['assests/activities2.jpg','assests/appointment.jpg',"assests/banner.jpg",'assests/banner2.jpg',"assests/expert2.png"];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff302b63).withOpacity(0.9),
        appBar: AppBar(
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))
          ),
          backgroundColor: Color(0xff302b63).withOpacity(1),
          title: const Text('Activities'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _name.length,
                      itemBuilder: (context, index) {
                        return Activity_detail(child: _name[index],image: _image[index],);
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
