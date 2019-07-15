import 'package:flutter/material.dart';
import 'package:flutter_leaps_04/CreateTopic/text_post.dart';

import 'create_topic.dart';

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
        child: CreateTopicBodyLayout(),

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


class CreateTopicBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _createTopicHeader(context);
 }
}

Widget _createTopicHeader(BuildContext context){
  return ListView(
    children: ListTile.divideTiles( //          <-- ListTile.divideTiles
        context: context,
        tiles: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_pic.png'),
            ),
            title: FlatButton(
              child: Text("Whats is your mind?"), textColor: Colors.grey, onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateTopicPostPage()),
              );
            },
            ),
          ),

          ListTile(
            leading: Image.asset('assets/icon_gallery.png',height: 40.0,),
            title:VerticalDivider(),
            trailing:Image.asset('assets/icon_check_in.png',height: 40.0,),
              contentPadding: EdgeInsets.fromLTRB(100.0,5.0,100.0, 5.0),

          ),




        ]
    ).toList(),



  );

}

//class VerticalDivider extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) => RotatedBox(
//    quarterTurns: 1,
//    child: Divider(),
//  );
//}
//
//





