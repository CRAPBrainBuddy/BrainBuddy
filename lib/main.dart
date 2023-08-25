import 'package:flutter/material.dart';
import 'bottomnavbar.dart';
import 'musicplayer.dart';
import 'package:brainbuddy/video.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    initialRoute: 'bottom',
    routes:
    {'music':(context)=>MusicPlayer(),
      'bottom':(context)=>BottomBar(),
    },
  ));
}