import 'package:flutter/material.dart';
import 'package:brainbuddy/playerbox.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';

class MusicPlayer extends StatefulWidget {
   MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();

}

class _MusicPlayerState extends State<MusicPlayer> {
  late AudioPlayer _audioPlayer;

  @override
  void initState(){
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset("assests/behti_hawa.mp3");
  }

  @override
  void dispose(){
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                //back button and menu button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: PlayerBox(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text("PLAYLIST"),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: PlayerBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                //cover art,artist name , song name

                PlayerBox(
                    child: Column(
                  children: [
                    Image.asset(
                      "assests/cover.jpg",
                      height: 250,
                      width: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 60, right: 60, top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "All is well",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade500),
                              ),
                              // SizedBox(height: 5,),
                              Text(
                                "Puneet",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 25,
                ),

                //start time, shuffle button , repeat button,end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('0.00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4.22')
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                //linear bar
                PlayerBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.5,
                    progressColor: Colors.purple,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),

                //previous song ,pause ,play , skip next song
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                          child: PlayerBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      )),
                      Control(audioPlayer: _audioPlayer),
                      // Expanded(child: StreamBuilder<PlayerState>(stream: _audioPlayer.playerStateStream,
                      // builder: (context,snapshot){
                      //   final playerState = snapshot.data;
                      //   final processingState = playerState?.processingState;
                      //   final playing = playerState?.playing;
                      //   if(!(playing ?? false)){
                      //     return IconButton(onPressed: _audioPlayer.play, icon:Icon(Icons.play_arrow));
                      //
                      //   }
                      // },))
                      // Expanded(
                      //     flex: 2,
                      //     child: Padding(
                      //       padding:
                      //           const EdgeInsets.symmetric(horizontal: 20.0),
                      //       child: PlayerBox(
                      //         child: ElevatedButton(
                      //           onPressed: (){playAudioFromUrl("assests/believer_song.mp3");},
                      //           child: Text("Play")
                      //         )
                      //       ),
                      //     )),
                      // Text(
                      //   isPlaying ? 'Playing' : 'Paused',
                      //   style: TextStyle(fontSize: 20),
                      // ),
                      Expanded(
                          child: PlayerBox(
                        child: Icon(
                            Icons.skip_next,
                            size: 32,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
class Control extends StatelessWidget {
  const Control({super.key,required this.audioPlayer});

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        bool playing = playerState!.playing;
        if (!(playing ?? false)) {
          return IconButton(
              onPressed: audioPlayer.play, icon: Icon(Icons.play_arrow));
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
              onPressed: audioPlayer.pause, icon: Icon(Icons.pause_circle));
        }else return Icon(Icons.no_encryption_gmailerrorred_outlined);
      },
    );
  }
}

