import 'package:flutter/material.dart';

import 'assets.dart';
import 'circles_with_image.dart';

const double IMAGE_SIZE = 200.0;

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: double.infinity,
      width: double.infinity,
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.tealAccent[400],
                Colors.teal[50],
                Colors.deepPurple[700],
              ],
              begin: Alignment(0.5, -1.0),
              end: Alignment(0.5, 1.0)
          )
      ),
      child: Stack(
        children: <Widget>[
          new Positioned(
            child: new CircleWithImage(Assets.pose2),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          new Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: Image(
                    image: AssetImage(Assets.pose2),
                    fit: BoxFit.fitHeight,
                  ),
                  height: IMAGE_SIZE,
                  width: IMAGE_SIZE,
                ),
                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Performance Analytics On The Go',
                    style: TextStyle(fontSize: 22,fontFamily: 'Paytone one'),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Padding(
                  padding:const EdgeInsets.all(8.0),
                  child:  Text('Manager able to obtain current performance of your employeess and make informed decisions with our real time analytics.',
                    style: TextStyle(fontSize: 14,fontFamily: 'Roboto'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
        alignment: FractionalOffset.center,
      ),
    );
  }
}