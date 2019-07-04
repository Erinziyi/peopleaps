import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreenPage extends StatefulWidget {

  static String tag = 'splashscreen-page';
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  startTime() async {
    var _duration = new Duration(seconds: 8);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushNamed('/OnboardingMainPage');
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.lightBlue),
          ),
          Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset('assets/peopleapswhitelogo.png',height:200.0,width:200.0,fit: BoxFit.cover,),

                    ],

                  ),
                ),
              )

            ],
          )
        ],
      ),

    );
  }
}