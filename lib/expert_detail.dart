import 'package:brainbuddy/home2.dart';
import 'package:flutter/material.dart';
import 'package:brainbuddy/condition_container.dart';
import 'package:brainbuddy/mybookings.dart';
import 'package:brainbuddy/expertlist.dart';
import 'package:brainbuddy/allexpertpage.dart';
import 'package:brainbuddy/musicplayer.dart';

class Expert_Detail extends StatelessWidget {
  final List _condition = ['All','Stress','Anxiety','Insomia','Hyper Tension'];
  final List _name = ['Ruby Rani','Chaitanya Bhatt','Puneet Agrawal','Amrita Singha','Nirbhay Sirsikar'];

  @override
  Widget build(BuildContext context) {
    void more() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AllExpertList()));
    }

    void mybooking() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MusicPlayer()));
    }

    return Scaffold(
        backgroundColor: Color(0xff302b63).withOpacity(0.8),
        // backgroundColor: Color(0xffF3F0F1),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(15, 15),bottomLeft: Radius.elliptical(15,15))
          ),
          backgroundColor: Color(0xff302b63).withOpacity(1),
          title: Align(
              alignment: Alignment.center,
              child: Text(
                'Experts',
                style: TextStyle(fontSize: 25),
              )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Home()));
            },
          ),
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: SizedBox(
                height: 40,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black12,
                        shape: RoundedRectangleBorder(
                      // side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(15),
                    )),
                    onPressed: mybooking,
                    child: Text('My Bookings')),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assests/expert2.png'),
                  width: 240,
                  height: 250,
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'About 75% of the people who take therapy admit to have better mental health',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                  ),
                )),
                Container(
                  height: 115,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _condition.length,
                      itemBuilder: (context, index) {
                        return Condition_container(child: _condition[index],);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                ExpertList(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: SizedBox(
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.black12,
                              shape: RoundedRectangleBorder(
                                // side: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          onPressed: more,
                          child: Text('More >>',style: TextStyle(color: Color(0xff302b63)))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ));
  }
}
