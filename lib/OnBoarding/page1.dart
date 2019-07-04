import 'package:flutter/material.dart';
import 'assets.dart';
import 'circles_with_image.dart';





class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: double.infinity,
      width: double.infinity,
      decoration: new BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent[100],
                Colors.lightBlue[100],
                Colors.deepPurpleAccent[100],
              ],
              begin: Alignment(0.5, -1.0),
              end: Alignment(0.5, 1.0)
          )
      ),
      child: Stack(
        children: <Widget>[
          new Positioned(
            child: new CircleWithImage(Assets.pose1),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          new Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: Image(
                    image: AssetImage(Assets.pose1,),
                    fit: BoxFit.fitHeight,
                  ),
                  height: IMAGE_SIZE,
                  width: IMAGE_SIZE,
                ),
                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('PEOPLEaps',
                    style: TextStyle(fontSize: 22,fontFamily: 'Paytone one'),
                    textAlign: TextAlign.center,
                  ),
                ),

                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text('The No.1 continuous learning and\n performance managemeent app in the market!',
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








