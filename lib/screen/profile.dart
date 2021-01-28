import 'package:Tricon/screen/main_drawer.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body:SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20),
        child: Stack(
          children: <Widget>[
           ProfileDetails()
          ],
        ),
      ),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
           Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/image1.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
      new ListTile(
        leading:  Icon(
          Icons.person,
          color: Colors.green[900],
          ),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "Name",
            counterText: "Francis C.J. Francis"
          ),
        ),
      ),
      new ListTile(
        leading:  Icon(
        Icons.phone,
        color: Colors.green[900],
        ),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "Phone",
            counterText: "08156165707"
          ),
        ),
      ),
      new ListTile(
        leading:  Icon(Icons.email,
        color: Colors.green[900],
        ),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "Email",
            counterText: "cjfrancisf@gmail.com"
          ),
        ),
      ),
      const Divider(
        height: 1.0,
      ),
       new ListTile(
        leading:  Icon(Icons.today,
        color: Colors.green[900],
        ),
        title: const Text('Birthday'),
        subtitle: const Text('Oct 6th'),
      ),
      new ListTile(
        leading:  Icon(Icons.label,
        color: Colors.green[900],
        ),
        title: const Text('Blood Group'),
        subtitle: const Text('o+'),
      ),
     
      new ListTile(
        leading:  Icon(Icons.line_weight,
        color: Colors.green[900],
        ),
        title: const Text('Weigh'),
        subtitle: const Text('80kg'),
      ),
       new ListTile(
        leading:  Icon(Icons.height,
        color: Colors.green[900],
        ),
        title: const Text('Height'),
        subtitle: const Text('185m'),
      ),
        FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Update'),
        icon: Icon(Icons.update),
        backgroundColor: Colors.green[900],
      ),
    ],
        
      ),
    );
  }
}
