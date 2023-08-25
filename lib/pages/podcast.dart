import 'package:flutter/material.dart';
import 'package:brainbuddy/Activity_details.dart';

class PodCast extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final List _podcast = ['podcast 1', 'podcast 2','podcast 3','podcast 4','podcast 5'];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff302b63).withOpacity(0.9),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))
          ),
          backgroundColor: Color(0xff302b63).withOpacity(1),
          title: const Text('PodCast'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _podcast.length,
                      itemBuilder: (context, index) {
                        return Scaffold();
                        // return Activity_detail(child: _podcast[index]);
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
