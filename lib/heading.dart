import 'package:brainbuddy/pages/meditation.dart';
import 'package:brainbuddy/pages/music.dart';
import 'package:brainbuddy/pages/podcast.dart';
import 'package:flutter/material.dart';
import 'package:brainbuddy/activities.dart';
import 'package:brainbuddy/pages/books.dart';
import 'package:brainbuddy/pages/exercises.dart';

class Heading extends StatelessWidget {
  final child;

  Heading({required this.child});

  @override
  Widget build(BuildContext context) {
    void activites(){
      if(child == "Activites") {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => Activities()));
      }
      else if(child == "Meditation"){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Meditation()));
      }
      else if(child == "Books"){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Books()));
      }
      else if(child == "Exercises"){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Exercises()));
      }
      else if(child == "PodCast"){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PodCast()));
      }
      else if(child == "Music"){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Music()));
      }
    }
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              child,
              style: TextStyle(
                  color: Colors.white, fontSize: 25),
            ),
          ),
          TextButton(
              onPressed: activites,
              child: Text('See All',style: TextStyle(color: Colors.white,fontSize: 15),))
        ],
      ),
    );
  }
}
