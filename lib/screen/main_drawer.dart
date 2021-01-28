import 'dart:convert';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 30),
            color: Colors.green[700],
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/image1.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    'Francis C.J. Francis',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'cjfrancisf@gmail.com',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          DrawerItmes()
        ],
      ),
    );
  }
}

class DrawerItmes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.home_sharp,
            color: Colors.green[900],
          ),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.local_hospital_rounded,
            color: Colors.green[900],
          ),
          title: Text(
            'Hospitals around me',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/clinics');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.bookmarks,
            color: Colors.green[900],
          ),
          title: Text(
            'Book appointment',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/book');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.memory,
            color: Colors.green[900],
          ),
          title: Text(
            'My health',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.warning,
            color: Colors.green[900],
          ),
          title: Text(
            'Emergency button',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onLongPress: () {
            Navigator.pushNamed(context, '/book_emergency');
          },
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.code,
            color: Colors.green[900],
          ),
          title: Text(
            'Developers',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            color: Colors.green[900],
          ),
          title: Text(
            'logout',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
      ],
    );
  }
}
