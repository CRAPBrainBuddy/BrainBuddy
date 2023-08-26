import 'package:flutter/material.dart';
import 'package:brainbuddy/musicplayer.dart';

class Activity_detail extends StatelessWidget {
  final String child;
  final image;

  Activity_detail({required this.child, required this.image});
  @override
  Widget build(BuildContext context) {

    void music(){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MusicPlayer()));
    }
    return InkWell(
      onTap: music,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        width: 220,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            color: Colors.black26,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Colors.black26,
            )),
      ),
    );
  }
}
