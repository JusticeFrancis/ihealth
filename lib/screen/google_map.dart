import 'package:flutter/material.dart';
/* import 'screen/search.dart'; */

//the main function is the starting point for all our apps
/* void main() {
  runApp(MaterialApp(
    title: 'Tricon Tutor',
    /* home: Home(), */
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/search': (context) => Search(),
    },
  ));
} */

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Row(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            const Icon(Icons.format_list_bulleted),
            Expanded(
              child: Center(
                child: Text('Tricon Tutor'),
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
              child: Icon(Icons.search),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        /* child: Image(image: AssetImage('assets/images/image1.jpg')), */
      ),
    );
  }
}
