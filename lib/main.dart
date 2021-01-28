import 'package:Tricon/modules/main_page.dart';
import 'package:Tricon/screen/Emergency.dart';
import 'package:Tricon/screen/book_emergency.dart';

import 'package:Tricon/screen/main_drawer.dart';
import 'package:Tricon/screen/hospitals.dart';
import 'package:Tricon/screen/officers_around.dart';
import 'package:Tricon/screen/profile.dart'; 
import 'package:flutter/material.dart';
import 'screen/search.dart'; 
import 'screen/book_appointment.dart'; 

//the main function is the starting point for all our apps
 void main() {
  runApp(MaterialApp(
    title: 'Tricon Tutor',
    /* home: Home(), */
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/search': (context) => Search(),
      '/clinics' : (context) => Hospital(),
      '/book' : (context) => ColorLoader3(),
      '/officers' : (context) => Officers(),
      '/book_emergency' : (context) => Emergency(),
      '/emergency' : (context) => EmergencyUnits(),
    },
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text('iHealth'),
              ),
            ),
           RaisedButton(
              onPressed: () {
                /*  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Search()),
                    ); */
                Navigator.pushNamed(context, '/search');
              },
              child: Row(
                children: [
                  Text('help'),
                  Icon(Icons.search),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green[900],
      ),
      drawer: MainDrawer(),
      body: Center(
       child: MainPage(),
      ),
    );
  }
}
