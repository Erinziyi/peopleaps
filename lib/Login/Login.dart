import 'package:flutter/material.dart';
import 'package:flutter_leaps_04/Dashboard/DashboardPage.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:LoginLayout() ,


    );
  }
}

class LoginLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        left: true,
        top:false,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(0.0),
        child:Stack (
          children: <Widget>[
            Container(
              height:350,
              child: RotatedBox(
                quarterTurns: 2,
                child: WaveWidget(
                  config: CustomConfig(
                    gradients: [
                      [Colors.white, Colors.blue.shade300],
                      [Colors.blue, Colors.lightBlue],
                    ],
                    durations: [19440, 10800],
                    heightPercentages: [0.20, 0.25],
                    blur: MaskFilter.blur(BlurStyle.solid, 10),
                    gradientBegin: Alignment.bottomLeft,
                    gradientEnd: Alignment.topRight,
                  ),
                  waveAmplitude: 0,
                  size: Size(
                    double.infinity,
                    double.infinity,
                  ),
                ),
              ),
            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top:50.0),


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/login_domain_logo.png', width:280.0, height: 165.0,fit: BoxFit.fill,
                      ),


                      Card(
                        margin: EdgeInsets.only(left: 30, right:30, top:30),
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.perm_identity, color: Colors.black26,),
//                            suffixIcon: Icon(Icons.check_circle, color: Colors.black26,),
                              hintText: "Portal ID",
                              hintStyle: TextStyle(color: Colors.black26),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(left: 30, right:30, top:30),
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Colors.black26,),
//                            suffixIcon: Icon(Icons.check_circle, color: Colors.black26,),
                              hintText: "Comapany Email",
                              hintStyle: TextStyle(color: Colors.black26),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(left: 30, right:30, top:20),
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.black26,),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.black26,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
//              SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(70.0,50.0,70.0,10.0),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    color: Colors.lightBlue,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashboardPage()),
                      );

                    },
                    elevation: 11,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Text("Login", style: TextStyle(
                        color: Colors.white
                    )),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(child: Text("Forget Password?"), textColor: Colors.indigo, onPressed: (){},)
                        ],
                      )
                    ],
                  ),
                ),



                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[



                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Text("Dont have an account?"),
                          FlatButton(child: Text("Sign up"), textColor: Colors.indigo, onPressed: (){
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context) => QrCodePage ()),
//                            );
                          },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

          ],

        ),
      ),
    );
  }
}