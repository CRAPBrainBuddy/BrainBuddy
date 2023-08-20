import 'MyLogin.dart';
import 'package:flutter/material.dart';
import 'MySignUp.dart';
import 'bottomnavbar.dart';
import 'home2.dart';
import 'expert_detail.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    initialRoute: 'bottom',
    routes:
    {'bottom':(context)=>BottomBar(),
    //   'Expert':(context)=>Expert_Detail(),
    //   'home2':(context)=>Home(),
    //   'login':(context)=>MyLogin(),
    // 'signUp':(context)=>MySignUp(),
    },
  ));
}