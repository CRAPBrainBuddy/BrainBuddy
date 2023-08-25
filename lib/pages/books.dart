import 'package:flutter/material.dart';
import 'package:brainbuddy/Activity_details.dart';

class Books extends StatelessWidget {

  final List _books = ['book 1', 'book 2','book 3','book 4','book 5'];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff302b63).withOpacity(0.9),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))
          ),
          backgroundColor: Color(0xff302b63).withOpacity(1),
          title: const Text('Books'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _books.length,
                      itemBuilder: (context, index) {
                        return Scaffold();
                        // return Activity_detail(child: _books[index]);
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
