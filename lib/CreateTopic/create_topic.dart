import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CreateTopicPostPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

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
            color: Colors.black,
          ),

        ),
        centerTitle: true,
        actions: <Widget> [
          FlatButton(
            child: Text("Post"), textColor: Colors.grey, onPressed: (){},
          ),
        ],
      ),

      body: SlidingUpPanel(
        backdropEnabled: true,
        renderPanelSheet: false,

        panel:_floatingCreatePostPanel(context),
        collapsed: _floatingCreatePostCollapsed(),

        body:Container(
          child: new Column(
            children: <Widget>[
              createPostHeader(),
              createPostBody(),

            ],
          ),

        ),
      ),



    );
  }

  Widget _floatingCreatePostPanel(context){
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 1, //
            //                   <--- border width here

          ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),

          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.grey,
            ),
          ]
      ),
      margin: const EdgeInsets.fromLTRB(0.0,50.0, 0.0, 0.0),
      child: Center(
        child:  _myCreateTopicListView(context) ,



      ),
    );
  }



  Widget _myCreateTopicListView(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            leading: Image.asset('assets/icon_gallery.png',height: 35.0,),
            title: Text('Photo/Video'),
          ),
          ListTile(

            title: Text('Camera'),
          ),
          ListTile(
            leading: Image.asset('assets/icon_check_in.png',height: 35.0,),
            title: Text('Check In'),
          ),
        ],
      ).toList(),
    );
  }




  Widget _floatingCreatePostCollapsed(){
    return Container(

      decoration: BoxDecoration(
       color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      ),
      margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
      child: Center(
        child: Text(
          "Add to your post",
          style: TextStyle(color: Colors.black,fontSize:16.0,),
        ),
      ),
    );
  }




  Widget createPostHeader(){
    return Container(
      margin: const EdgeInsets.only(top:10.0),
      padding: EdgeInsets.all(15.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
         new CircleAvatar(
            backgroundImage: new AssetImage('assets/profile_pic.png'),
            radius:24.0,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: new Row(
              children: <Widget>[
                new Text("Erin Kong",
                  style:new TextStyle(
                    color:Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),

          )
        ],
      ),
    );
  }




  Widget createPostBody(){
    return Container(
      padding: EdgeInsets.all(15.0),
      child: new Column(
        children: <Widget>[
           new TextField(
            decoration: InputDecoration(
                hintText: "Whats on your mind?",
                hintStyle: TextStyle(color: Colors.black26),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
//                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0)
            ),
          ),


        ],

      ),

    );
  }
}




