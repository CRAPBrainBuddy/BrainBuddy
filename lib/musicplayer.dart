import 'package:flutter/material.dart';
import 'package:brainbuddy/playerbox.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'package:audio_service/audio_service.dart';
import 'package:rxdart/rxdart.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MusicPlayer extends StatefulWidget {
  MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  late AudioPlayer _audioPlayer;

  // final _playlist = ConcatenatingAudioSource(
  //   children: [
  //     AudioSource.uri(
  //       Uri.parse("assests/song1.mp3"),
  //       tag: MediaItem(
  //         id:'0',
  //         title: 'deep meditation',
  //         artUri:Uri.parse("assests/image1.webp"),
  //       )
  //     ),
  //     AudioSource.uri(
  //       Uri.parse("assests/behti_hawa.mp3"),
  //         tag: MediaItem(
  //           id:'1',
  //           title:'song',
  //           artUri:Uri.parse("assests/cover.jpg"),
  //         )
  //     ),
  //   ],
  // );

  // @override
  // void initState(){
  //   super.initState();
  //   _audioPlayer = AudioPlayer();
  //   _init();
  // }
  //
  // Future<void>_init() async{
  //   await _audioPlayer.setLoopMode(LoopMode.all);
  //   await _audioPlayer.setAudioSource(_playlist);
  // }

  @override
  void initState(){
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset("assests/song1.mp3");
  }

  @override
  void dispose() {
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

                // Column(
                //   children: [
                //     StreamBuilder<SequenceState?>(stream:_audioPlayer.sequenceStateStream, builder: (context,snapshot){
                //         if (snapshot.hasData && snapshot.data != null) {
                //         // Handle non-null SequenceState
                //         final SequenceState = snapshot.data!;
                //       final state = snapshot.data;
                //       if(state?.sequence.isEmpty ?? true){
                //         return const SizedBox();
                //       }
                //       final metadata = state!.currentSource!.tag as MediaItem;
                //       return MainMetaData(imageUrl: metadata.artUri.toString(), title: metadata.title);
                //     }
                //     else return SizedBox();}),
                //   ],
                // ),

                PlayerBox(
                    child: Column(
                  children: [
                    Image.asset(
                      "assests/image1.webp",
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
                                "Om sutra",
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Text('0.00'),
                //     Icon(Icons.shuffle),
                //     Icon(Icons.repeat),
                //     Text('4.22')
                //   ],
                // ),
                SizedBox(
                  height: 25,
                ),

                //linear bar
                // PlayerBox(
                //   child: LinearPercentIndicator(
                //     lineHeight: 10,
                //     percent: 0.5,
                //     progressColor: Colors.purple,
                //     backgroundColor: Colors.transparent,
                //   ),
                // ),
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
                      //
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
  const Control({super.key, required this.audioPlayer});

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
        } else
          return Icon(Icons.no_encryption_gmailerrorred_outlined);
      },
    );
  }
}

class MainMetaData extends StatelessWidget {
  const MainMetaData({super.key,required this.imageUrl,required this.title});

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRect(
          // borderRadius:BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
        )
          ,),
        const SizedBox(height: 20,),
        Text(title,style: const TextStyle(fontSize: 22),)
      ],
    );
  }
}

