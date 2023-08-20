import 'package:flutter/material.dart';
import 'package:brainbuddy/detail_container.dart';

class ExpertList extends StatelessWidget {
  final List _name = [
    'Ruby Rani',
    'Chaitanya Bhatt',
    'Puneet Agrawal',
    'Amrita Singha',
    'Nirbhay Sirsikar'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _name.length,
        itemBuilder: (context, index) {
          return Detail_container(
            child: _name[index],
          );
        });
  }
}
