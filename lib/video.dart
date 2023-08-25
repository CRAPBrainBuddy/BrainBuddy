import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class VideoPlayer extends StatefulWidget {

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController _controller;
  @override
  void initState (){
    super.initState();
    _controller=VideoPlayerController.asset("assests/video.mp4")..initialize().then((_){
      setState(() {});
      // _controller.play();
    });
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Center(
      child:_controller.value.isInitialized ? VideoPlayer() :Container(),
    );
  }
}

