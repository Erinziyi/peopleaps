import 'package:flutter/material.dart';
import 'package:flutter_leaps_04/CreateTopic/text_post.dart';

class DiscussionCreateTopicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Customer Service Skill ' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),
      ),
      body: new Center(


      ),

      floatingActionButton:new FloatingActionButton(
    onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TextPostPage()),
      );

      },
        child: Icon(Icons.chat,),
        backgroundColor: Colors.
        blueAccent[400],

      ),
    );
  }




}






