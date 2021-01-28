import 'package:Tricon/screen/main_drawer.dart';
import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Pharmacies around you'),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Container(
               child: Column(
                  children: [
                    HospitalGoogleMap(),
                  ],
               ),
             ),

             Container(
               padding: EdgeInsets.only(top: 30, bottom: 15),
               child: Column(
                  children: [
                    SearchLocation(),
                  ],
               ),
             ),

             Container(
               child: Column(
                  children: [
                    Suggestions(),
                    Suggestions(),
                    Suggestions(),
                  ],
               ),
             )
              ],
          ),
        ));
  }
}





class HospitalGoogleMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage('assets/images/image1.jpg'),),
    );
  }
}


class SearchLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
                decoration: InputDecoration(
                  hintText: "Search using hospital name...",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
    );
  }
}



class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  ListTile(
            leading: Icon(Icons.youtube_searched_for,
             color: Colors.green[900],
            ),
            title: Text(
              'Portharcourt, Nigeria',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          
    );
  }
}