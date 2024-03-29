import 'package:flutter/material.dart';

import 'assets.dart';
import 'circles_with_image.dart';

const double IMAGE_SIZE = 300.0;

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: double.infinity,
      width: double.infinity,
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.orange[300],
                Colors.red[100],
                Colors.orange[600],
              ],
              begin: Alignment(0.5, -1.0),
              end: Alignment(0.5, 1.0)
          )
      ),
      child: Stack(
        children: <Widget>[
          new Positioned(
            child: new CircleWithImage(Assets.pose3),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          new Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: Image(
                    image: AssetImage(Assets.pose3),
                    fit: BoxFit.fitHeight,
                  ),
                  height: IMAGE_SIZE,
                  width: IMAGE_SIZE,
                ),
                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Goal Setting and Management',
                    style: TextStyle(fontSize: 22,fontFamily: 'Paytone one'),
                    textAlign: TextAlign.center,
                  ),
                ),
                new Padding(
                  padding:const EdgeInsets.all(8.0),
                  child:
                  Text('Manager and leaders can set track performance goals and get notifications on important courses available',
                    style: TextStyle(fontSize: 14,fontFamily: 'Roboto'),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          )
        ],
        alignment: FractionalOffset.center,
      ),
    );
  }
}