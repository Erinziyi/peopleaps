import 'package:flutter/material.dart';

class TextPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(20.0),
        child: new Container(
          child: new Stack(
            children: <Widget>[
              bodyTextPostContent(context),

            ],
          ),

        ),

      ),


    );
  }

  Widget textPostHeader(BuildContext context){
    return new Container(
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(6.0, 0.0, 0.0,10.0),
          child: new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(null),
          ),



          ),

        ],

      ),

    );

}

//body
  Widget bodyTextPostContent(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0,10.0),
        child: new Column(
          children: <Widget>[
            textPostHeader(context),





          ],
        )
    );
  }

}
