import 'package:brainbuddy/MyLogin.dart';
import 'package:flutter/material.dart';

const String login = '/';
const String signup = '/signup';

class Choice{
  const Choice({required this.text,required this.image,required this.nextpage});
  final String text;
  final image;
  final String nextpage;
}

const List<Choice> choices = <Choice>[
  Choice(text: 'Activity',image:'assests/activities2.jpg',nextpage: 'activity'),
  const Choice(text: 'Motivation',image: 'assests/motivational quotes.png',nextpage: 'signUp'),
  const Choice(text: 'Therapy',image: 'assests/therapy.jpg',nextpage: 'login'),
  const Choice(text: 'Appointment',image: 'assests/appointment.jpg',nextpage: 'login'),
  const Choice(text: 'Meditation',image: 'assests/meditation.jpg',nextpage: 'login'),
  const Choice(text: 'Progress',image: 'assests/progress tracking.jpg',nextpage: 'login'),

];


class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case 'login':
        return MaterialPageRoute(builder: (_)=>MyLogin());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }

  }
}


class Home_component extends StatelessWidget {
  final Choice choice;
  const Home_component({
    super.key,
    required this.choice});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(choice.image),
                fit: BoxFit.cover
              ),
            ),
            height: 140,
            width: 150,
            child:
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(choice.nextpage);
              },
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding:EdgeInsets.all(0.0),
                child:
                Text(choice.text,style: TextStyle(fontSize: 18)),
            )),
      ],
    );
  }
}
