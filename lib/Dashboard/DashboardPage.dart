import 'package:flutter/material.dart';
import 'package:flutter_leaps_04/ChangePassword/change_password_page.dart';

import 'dashborad_content_card.dart';
import 'package:flutter/cupertino.dart';

enum PageEnum {
  ChangePasswordPage,
  logOut,
}




class DashboardPage extends StatefulWidget {


  @override
  _DashboardPageState createState() => _DashboardPageState();
}





class _DashboardPageState extends State<DashboardPage> {
  _onSelect(PageEnum value){
    switch(value){
      case PageEnum.ChangePasswordPage:
        Navigator.of(context).push(
            CupertinoPageRoute(builder: (BuildContext context) => ChangePasswordPage()));
        break;
      case PageEnum.logOut:
//        Navigator.of(context).push(CupertinoPageRoute(
//            builder: (BuildContext context) => SecondPage()));
        break;
      default:
        Navigator.of(context).push(CupertinoPageRoute(
            builder: (BuildContext context) => ChangePasswordPage()));
        break;

    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Container(
              constraints: new BoxConstraints.expand(
                height:300.00,
              ),
              alignment: Alignment.bottomCenter,
              padding: new EdgeInsets.only(left:8.0, bottom: 8.0),
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage('assets/login_domain_background.png'),fit: BoxFit.cover,
              ),
              ),
            ),
            bodyScrollviewContent(context),


          ],
        ),
      ),

    );
  }

  /*This is header section to handle profile image, email, name and dropdown button*/
  Widget headerSection() {
    return new Container(
      margin: const EdgeInsets.only(top:60.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(6.0, 0.0, 0.0,10.0),
            child: new CircleAvatar(
              backgroundImage: new AssetImage('assets/profile_pic.png'),
              radius:24.0,
            ),
          ),
          Container(
            padding: new EdgeInsets.only(left:10.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Text("Erin",
                  style:new TextStyle(
                    color:Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                new Text("erin@peoplelogy.com",
                  style:new TextStyle(
                    color:Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: new EdgeInsets.only(left:30.0),
            child: new Column(

              children: <Widget>[
                _paddingPopup(),

              ],
            ),
          ),
        ],
      ),
    );
  }


  /*This is menu section to handle 6 buttons*/
  Widget menuSection(BuildContext context, int width_percent){

    //All the menu icon and label set here. After that, generateMenuItems() function will render its menu automatically
    List<MenuItem> menuItem  =  new List<MenuItem>();
    List<MenuItem> menuItemTwo  =  new List<MenuItem>();

    //Column one

    MenuItem course = new MenuItem();
    course.label  = "Course";
    course.image  = "assets/icon_course.png";
    course.gotoActivity =  '/CourseListPage';
    menuItem.add(course);

    MenuItem training = new MenuItem();
    training.label  = "Training";
    training.image  = "assets/icon_training.png";
    training.gotoActivity = '/TrainingSessionPage';
    menuItem.add(training);

    MenuItem discussion = new MenuItem();
    discussion.label  = "Discussion";
    discussion.image  = "assets/icon_discussion.png";
    discussion.gotoActivity = '/DiscussionTopicListPage';
    menuItem.add(discussion);

    //Column two

    MenuItem notification = new MenuItem();
    notification.label  = "Notification";
    notification.image  = "assets/icon_notification.png";
    notification.gotoActivity = '/NotificationPage';
    menuItemTwo.add(notification);

    MenuItem actionplan = new MenuItem();
    actionplan.label  = "Action Plan";
    actionplan.image  = "assets/icon_action_plan.png";
    actionplan.gotoActivity = '/ActionPlanPage';
    menuItemTwo.add(actionplan);

    MenuItem report = new MenuItem();
    report.label  = "Report";
    report.image  = "assets/icon_report.png";
    report.gotoActivity = '/ReportPage';
    menuItemTwo.add(report);


    return new Card(
      color: Colors.white,
      elevation: 4.0,
      child: Container(
        margin: const EdgeInsets.only(top:10.0),
        height: 250.0,
        width: MediaQuery.of(context).size.width * (width_percent / 100),


        child:new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0,5.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: generateMenuItems(context, menuItem),
              ),
            ),
            new Container(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0,0.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: generateMenuItems(context, menuItemTwo),
              ),
            )
          ],
        ),

      ),
    );
  }

  Widget actionPlanSection (BuildContext context,){


    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0,0.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildContentTitle('Action Plan'),
          buildContentTextLabel('Due Date'),
          new Container(
            child: new Row(
              mainAxisSize:MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 1.0,0.0),
                  margin: const EdgeInsets.only(top: 10.0),
                  height: 95,
                  width: 120.0,
                  child: new Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: new Container(
                      padding: EdgeInsets.all(5.0),
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new Text('0',
                                style:new TextStyle(
                                  color:Colors.indigoAccent[700],
                                  fontSize:34.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(left: 2.0, right:2.0),
                                  child: Divider(
                                    color: Colors.grey[600],
                                    height: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              new Text('This Month',
                                style:new TextStyle(
                                  color:Colors.blueGrey[200],
                                  fontSize:12.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 1.0,0.0),
                  margin: const EdgeInsets.only(top: 10.0),
                  height: 95,
                  width: 120.0,
                  child: new Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: new Container(
                      padding: EdgeInsets.all(5.0),
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new Text('0',
                                style:new TextStyle(
                                  color:Colors.blue[200],
                                  fontSize:34.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(left: 2.0, right:2.0),
                                  child: Divider(
                                    color: Colors.grey[600],
                                    height: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              new Text('Next Month',
                                style:new TextStyle(
                                  color:Colors.blueGrey[200],
                                  fontSize:12.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                new Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 1.0,0.0),
                  margin: const EdgeInsets.only(top: 10.0),
                  height: 95,
                  width: 120.0,
                  child: new Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: new Container(
                      padding: EdgeInsets.all(5.0),
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new Text('1',
                                style:new TextStyle(
                                  color:Colors.grey[400],
                                  fontSize:34.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(left: 2.0, right:2.0),
                                  child: Divider(
                                    color: Colors.grey[600],
                                    height: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              new Text('Overdue',
                                style:new TextStyle(
                                  color:Colors.blueGrey[200],
                                  fontSize:12.0,
                                  fontFamily:'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget trainingSessionSection(BuildContext context,){
    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0,0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildContentTitle('Training Session'),
          buildContentTextLabel('Latest Training Infomation'),

        ],

      ),

    );
  }

  Widget browseCourseSection (BuildContext context,){
    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0,0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildContentTitle('Browse Course'),

        ],

      ),

    );
  }





  Widget _paddingPopup() => PopupMenuButton<PageEnum>(
    onSelected: _onSelect,
    itemBuilder: (context) => [
      PopupMenuItem<PageEnum>(
        value: PageEnum.ChangePasswordPage,
          child: Text("Change Password"),
      ),

      PopupMenuItem<PageEnum>(
        value: PageEnum.logOut,
        child: Text("Log Out"),
      ),

    ],

   child: new RawMaterialButton(
     child: new Icon(
       Icons.settings,
       color: Colors.blueAccent[700],
       size:20.0,
     ),
     shape: new CircleBorder(),
     elevation: 20.0,
     fillColor: Colors.cyan[50],

   ),

  );

  //body Dashboard
  Widget bodyScrollviewContent(BuildContext context) {
    return new SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0,10.0),
        child: new Column(
          children: <Widget>[
            headerSection(),
            menuSection(context,90),
            actionPlanSection(context),
            actionPlanDashboardSlider(context),
            trainingSessionSection(context),
            trainingSessiondDashboardfSlider(context),
            browseCourseSection(context),
            browseCourseDashboardSlider(context),





          ],
        )
    );
  }

  //This function is to handle menu rendering from Array
  generateMenuItems(BuildContext context, List<MenuItem> menuItems)
  {
    List<Widget> list = new List<Widget>();
    for(var i = 0; i < menuItems.length; i++){
      list.add(buildButtonColumn(context, Image.asset(menuItems[i].image, height:60.0,width:60.0), menuItems[i].label,menuItems[i].gotoActivity));

    }

    return list;
  }

  // Resourse Reuse
  Column buildButtonColumn(BuildContext context, assetImage,String label, String gotoActivity ){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(

          child:FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(gotoActivity);
            },
            child: assetImage,

          ),
        ),
        Container(
          margin: const EdgeInsets.only(top:8),
          child: new Text(
            label,
            style: TextStyle(
                fontSize:12,
                fontFamily:'Roboto'
            ),
          ),
        ),
      ],
    );
  }

  Column buildContentTitle(String titlelabel){
    return Column (
      children: <Widget>[
        new Container(
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                titlelabel,
                style: TextStyle(
                  fontSize:20,
                  fontFamily: 'Paytone one',
                ),
              ),
            ],
          ),
        )
      ],

    );
  }

  Column buildContentTextLabel(String textlabel){
    return Column (
      children: <Widget>[
        new Container(
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                textlabel,
                style: TextStyle(
                  fontSize:12,
                  fontFamily: 'Roboto',
                  color:Colors.blueGrey[200],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MenuItem {
  String image;
  String label;
  String gotoActivity;
  MenuItem({this.image, this.label, this.gotoActivity });
}










