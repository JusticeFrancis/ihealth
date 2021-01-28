import 'package:flutter/material.dart';

class SearchSuggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Icon(Icons.search),
         Text('Does High fever mean corona virus infection',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 15
           ),
         ),
         ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('Search'),
        ),
        body: Column(
          children: <Widget>[
            Form(
                child: TextFormField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                focusColor: Colors.green,
                hintText: 'what do you want to know?',
              ),
            )),
            Row(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Recent searches'),
                )
              ],
            ),
            Column(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                SearchSuggestions(),
                SearchSuggestions(),
                SearchSuggestions(),
              ],
            )
          ],
        ));
  }
}
