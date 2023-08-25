import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:brainbuddy/home2.dart';
import 'package:brainbuddy/expert_detail.dart';
import 'package:brainbuddy/MyLogin.dart';
import 'package:brainbuddy/MySignUp.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen(){
    return [
      Home(),
      Expert_Detail(),
      MyLogin(),
      Text('Profile'),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem(){
    return [
      PersistentBottomNavBarItem(
          icon: Icon(Icons.home,color: Colors.white,),
          inactiveIcon: Icon(Icons.home,color: Colors.white38,)),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.person,color: Colors.white),
          inactiveIcon: Icon(Icons.person,color: Colors.white38,)),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.account_circle,color: Colors.white),
          inactiveIcon: Icon(Icons.account_circle,color: Colors.white38,)),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.chat,color: Colors.white),
          inactiveIcon: Icon(Icons.chat,color: Colors.black12,),
          activeColorPrimary: Colors.blue),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: PersistentTabView(
          context,
            screens: _buildScreen(),
          items: _navBarItem(),
        backgroundColor: Color(0xff1468a8),
        // backgroundColor: Color(0xFF4B0082),
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }
}
