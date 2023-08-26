import 'package:brainbuddy/heading.dart';
import 'package:brainbuddy/musicplayer.dart';
import 'package:flutter/material.dart';
import 'package:brainbuddy/activities.dart';
import 'package:brainbuddy/Activity_details.dart';
import 'package:brainbuddy/heading.dart';
import 'package:brainbuddy/video.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _route = [""];
  final List _activity = [
    'Activtiy 1',
    'Activity 2',
    'Activity 3',
    'Activity 4',
    'Activity 5'
  ];
  final List _image = [
    "assests/im1.jpeg",
    "assests/im2.jpeg",
    "assests/im3.jpeg",
    "assests/im4.jpeg",
    "assests/im5.jpeg",
  ];
  // final List _image = [
  //   'assests/activities2.jpg',
  //   'assests/appointment.jpg',
  //   "assests/banner.jpg",
  //   'assests/banner2.jpg',
  //   "assests/expert2.png"
  // ];
  // final List _image = ['activities.jpg','appointment.jpg',"banner.jpg",'banner2.jpg',"expert.jpg"];
  final List _podcast = [
    'podcast 1',
    'podcast 2',
    'podcast 3',
    'podcast 4',
    'podcast 5'
  ];
  final List _books = ['book 1', 'book 2', 'book 3', 'book 4', 'book 5'];
  final List _exercises = [
    'exercise 1',
    'exercise 2',
    'exercise 3',
    'exercise 4',
    'exercise 5'
  ];
  final List _music = ['music 1', 'music 2', 'music 3', 'music 4', 'music 5'];
  final List _meditation = [
    'meditaion 1',
    'meditaion 2',
    'meditaion 3',
    'meditaion 4',
    'meditaion 5'
  ];

  int currState = 0;
  onStepTapped(int value) {
    setState(() {
      currState = value;
    });
  }

  continueStep() {
    if (currState < 2) {
      setState(() {
        currState = currState + 1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    // void music(){
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => MusicPlayer()));
    // }
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10.0, bottom: 20.0),
        child: FloatingActionButton(
          child: Icon(Icons.navigation),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          onPressed: () => {},
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assests/banner4.jpeg'),
                    alignment: Alignment.topCenter),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 255,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Color(0xff302b63).withOpacity(0.9),
                        ],
                        stops: [0, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                    ),
                    Container(
                        // color: Colors.transparent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5.0),
                                topLeft: Radius.circular(5.0)),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff302b63),
                                Color(0xFF000c40).withOpacity(0.9)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10.0),
                                  child: Text(
                                    'Good Morning',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 150,
                              child: Theme(
                                data: ThemeData(
                                    canvasColor:
                                        Color(0xff302b63).withOpacity(0.9),
                                    colorScheme: Theme.of(context)
                                        .colorScheme
                                        .copyWith(primary: Color(0xff013220))),
                                child: Stepper(
                                    physics: NeverScrollableScrollPhysics(),
                                    margin: EdgeInsets.all(0),
                                    elevation: 0,
                                    type: StepperType.horizontal,
                                    currentStep: currState,
                                    // onStepContinue: continueStep,
                                    onStepTapped: onStepTapped,
                                    controlsBuilder: (context, controller) {
                                      return const SizedBox.shrink();
                                    },
                                    steps: [
                                      Step(
                                          title: const Text(''),
                                          content: Container(
                                            alignment: Alignment.center,
                                            width: 30,
                                            height: 50,
                                            child: Text(
                                              'Start Your Morning Fresh ,'
                                              'Have a Great Day Going',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          isActive: currState >= 0,
                                          state: StepState.complete),
                                      Step(
                                          title: Text(''),
                                          content: Center(
                                              child: Text(
                                            'Great Going, Completed Meditation',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )),
                                          isActive: currState >= 1,
                                          state: StepState.complete),
                                      Step(
                                          title: Text(''),
                                          content: Center(
                                              child: Text(
                                            'Amazing ,you have completed exercises',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )),
                                          isActive: currState >= 2,
                                          state: StepState.complete),
                                      Step(
                                          title: Text(''),
                                          content: Center(
                                              child: Text(
                                            'Finally You are all done for today',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )),
                                          isActive: currState >= 3,
                                          state: StepState.complete),
                                    ]),
                              ),
                            ),
                            Heading(child: 'Activites'),
                            Container(
                              height: 170,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _activity.length,
                                  itemBuilder: (context, index) {
                                    return Activity_detail(
                                      child: _activity[index],
                                      image: _image[index],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Heading(child: 'Meditation'),
                            Container(
                              height: 170,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _meditation.length,
                                  itemBuilder: (context, index) {
                                    return Activity_detail(
                                      child: _meditation[index],
                                      image: _image[index],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Heading(child: 'Music'),
                            Container(
                              height: 170,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _music.length,
                                  itemBuilder: (context, index) {
                                    return Activity_detail(
                                      child: _music[index],
                                      image: _image[index],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Heading(child: 'Exercises'),
                            Container(
                              height: 170,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _exercises.length,
                                  itemBuilder: (context, index) {
                                    return Activity_detail(
                                      child: _exercises[index],
                                      image: _image[index],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Heading(child: 'Books'),
                            Container(
                              height: 170,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _books.length,
                                  itemBuilder: (context, index) {
                                    return Activity_detail(
                                      child: _books[index],
                                      image: _image[index],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Heading(child: 'PodCast'),
                            Container(
                              height: 170,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _podcast.length,
                                  itemBuilder: (context, index) {
                                    return Activity_detail(
                                      child: _podcast[index],
                                      image: _image[index],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            VideoPlayer(),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
