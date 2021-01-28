import 'package:Tricon/modules/support_group.dart';
import 'package:Tricon/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';

class MainPage extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return Home();
  }
}

class Home extends State<MainPage>{
  @override
   int _currentIndex = 0;
  final List<Widget> _children = [
   ChatPage(),
   SupportGroup(),
   Profile(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.grey.shade400,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
         onTap: onTabTapped, // new
       currentIndex: _currentIndex, 
        items: [
          
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Chats"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text("Support Groups"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("My Profile"),
          ),
        ],
      ),
      body:  _children[_currentIndex],
    );
  }
 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}

  

