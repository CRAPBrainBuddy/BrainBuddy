import 'package:flutter/material.dart';
import 'package:brainbuddy/Activity_details.dart';

class Exercises extends StatelessWidget {
  final List _exercises = ['exercise 1', 'exercise 2','exercise 3','exercise 4','exercise 5'];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff302b63).withOpacity(0.9),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))
          ),
          backgroundColor: Color(0xff302b63).withOpacity(1),
          title: const Text('Exercises'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _exercises.length,
                      itemBuilder: (context, index) {
                        return Activity_detail(child: _exercises[index]);
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
