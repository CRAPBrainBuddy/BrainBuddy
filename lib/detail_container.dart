import 'package:flutter/material.dart';

class Detail_container extends StatelessWidget {
  final String child;

  Detail_container({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
            borderRadius: BorderRadius.circular(10.0), border: Border.all()),
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all()),
                height: 100,
                width: 100,
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 20, top: 20,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      child,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    Text(
                        'Neuropsychologist',
                    style: TextStyle(fontSize: 13),),
                    Text(
                      '3+ Years of experience',
                      style: TextStyle(fontSize: 13),),
                    Text(
                      'Hindi, English',
                      style: TextStyle(fontSize: 13),),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      width: 200,
                      height: 70,
                      child: Text('This is the example of TextOverflow clip, This will clip the text'),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
