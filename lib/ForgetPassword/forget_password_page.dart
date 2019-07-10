import 'package:flutter/material.dart';



class ForgetPasswordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Forget Password ' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),


      ),

      body:ForgetPasswordLayout() ,


    );
  }
}

class ForgetPasswordLayout extends StatelessWidget {
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

            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top:50.0),


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/forget_password.png', width:200.0, height:220.0,fit: BoxFit.fill,
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
                              hintText: "Enter Your Email",
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
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => DashboardPage()),
//                      );

                    },
                    elevation: 11,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Text("Submit", style: TextStyle(
                        color: Colors.white
                    )),
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


