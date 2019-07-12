import 'package:flutter/material.dart';

class CommentTopicPostPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[50],
        leading:  IconButton(
          icon: new Icon(Icons.close,color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(null),
        ),
        title: Text('Create post' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),

        ),
        centerTitle: true,
        actions: <Widget> [
          FlatButton(
            child: Text("Post"), textColor: Colors.grey, onPressed: (){},
          ),
        ],
      ),






    );
  }
}


