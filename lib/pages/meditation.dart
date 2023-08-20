import 'package:flutter/material.dart';
import 'package:brainbuddy/Activity_details.dart';

class Meditation extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final List _meditation = ['meditaion 1', 'meditaion 2','meditaion 3','meditaion 4','meditaion 5'];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff302b63).withOpacity(0.9),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))
          ),
          backgroundColor: Color(0xff302b63).withOpacity(1),
          title: const Text('Meditation'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _meditation.length,
                      itemBuilder: (context, index) {
                        return Activity_detail(child: _meditation[index]);
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