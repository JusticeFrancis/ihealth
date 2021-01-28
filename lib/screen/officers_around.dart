import 'package:Tricon/components/chat.dart';
import 'package:Tricon/models/chat_users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Officers extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<Officers> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Thankgod@bmh", secondaryText: "Bright Memorial Hospital", image: "assets/images/image1.jpg", time: ""),
    ChatUsers(text: "Sylvia@upth", secondaryText: "University of Portharcourt Teaching Hospital", image: "assets/images/image1.jpg", time: ""),
    ChatUsers(text: "IB@ireli", secondaryText: "Ireli Dantons clinic", image: "assets/images/image1.jpg", time: ""),
    ChatUsers(text: "Queen@towns", secondaryText: "Towns Health Care", image: "assets/images/image1.jpg", time: ""),
    ChatUsers(text: "Francis@upth", secondaryText: "University of Portharcourt Teaching Hospital", image: "assets/images/image1.jpg", time: ""),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ihealh desk around you'),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           /*  SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Talk to our team",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ), */
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}