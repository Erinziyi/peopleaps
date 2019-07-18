import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:simple_animations/simple_animations.dart';






class ModuleListDetailPage extends StatelessWidget {

//  static String tag ='courselistdetail-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('PEOPLEAPS' ,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),
      ),
      body: SlidingUpPanel(
        backdropEnabled: true,
        renderPanelSheet: false,

        panel:_floatingPanel(),
        collapsed: _floatingCollapsed(),

        body:Container(
         child: new Column(
           children: <Widget>[
             _summaryTitle(),
             DescriptionTextWidget(),

           ],
         ),
        ),
      ),

    );
  }

  Widget _summaryTitle(){
    return Container(
      padding: EdgeInsets.all(16.0),
      child: new Text('Goals Essential - Self Mastery & Personal Effectiveness ',maxLines: 4,
      style:new TextStyle(
        fontSize:16.0,
        fontWeight: FontWeight.bold,
      ),
      ),

    );
  }

  


  Widget _floatingCollapsed(){
    return Container(

      decoration: BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF)
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      ),
      margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
      child: Center(
        child: Text(
          "Module",
          style: TextStyle(color: Colors.white,fontSize: 18.0,),
        ),
      ),
    );
  }

  Widget _floatingPanel(){
    return Container(

      decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF)
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp
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

        child: _scrollingList(),
      ),
    );
  }

  Widget _scrollingList(){
    return Container(
      //adding a margin to the top leaves an area where the user can swipe
      //to open/close the sliding panel
      margin: const EdgeInsets.only(top: 50.0),
      color: Colors.white,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int i){
          return Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0,5.0),
            child: Column(
              children: <Widget>[
                FadeIn(1,QuizCard ()),
                FadeIn(1.5,VideoCard ()),
//                FadeIn(2,PdfViewCard()),
                FadeIn(2.5, ArticleViewCard ()),
                FadeIn(3, YoutubeCard ()),

              ],
            ),
          );
        },
      ),

    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final Widget child;

  const DescriptionTextWidget({Key key, this.child}) : super(key: key);
  @override
  _DescriptionTextWidgetState createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {

  String descText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child:new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            descText,
            maxLines:  descTextShowFlag ?16 : 4,textAlign: TextAlign.justify,
          ),
          InkWell(
            onTap: (){
              setState(() {
                descTextShowFlag = !descTextShowFlag;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                descTextShowFlag ? Text("ReadLess",style: TextStyle(color: Colors.blue),) :  Text("ReadMore",style: TextStyle(color: Colors.grey))
              ],
            ),

          ),
        ],

      )

    );
  }
}


// Article
class ArticleViewCard extends StatelessWidget {
  const  ArticleViewCard({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        color: Colors.deepPurpleAccent[700],
        elevation: 4.0,
        child: InkWell(
          onTap:(){
            Navigator.of(context).pushNamed('/ArticlePage');
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    width:55,
                    height:55,
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.cyanAccent[400],

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[900],
                            offset: new Offset(3.0,5.0),
                            blurRadius:50,
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/module_list_article.png'),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: ListTile(
                          title: Text('Why PEOPLEAPS?',style:new TextStyle(
                              color:Colors.white,
                              fontSize: 14.0),),
                          trailing: Icon(Icons.keyboard_arrow_right,color:Colors.white),
                        ),
                        height:30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ),
      ),
    );
  }
}


//
//// Pdf problem here
//class PdfViewCard extends StatefulWidget {
//  @override
//  _PdfViewCardState createState() => _PdfViewCardState();
//}
//
//class _PdfViewCardState extends State<PdfViewCard> {
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//
//      padding: const EdgeInsets.only(bottom: 8),
//      child: Card(
//        color: Colors.deepPurpleAccent[700],
//        elevation: 4.0,
//        child: InkWell(
//          onTap:(){
//
//            Navigator.of(context).pushNamed( PdfViewDetailPage.tag);
//
//          },
//          child: Padding(
//            padding: const EdgeInsets.all(20.0),
//            child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.only(right: 20.0),
//                  child: Container(
//                    width: 55,
//                    height:55,
//                    child: new Container(
//                      decoration: new BoxDecoration(
//                        color: Colors.cyanAccent[400],
//
//                        boxShadow: [
//                          new BoxShadow(
//                            color: Colors.grey[900],
//                            offset: new Offset(3.0,5.0),
//                            blurRadius:50,
//                          ),
//                        ],
//                        shape: BoxShape.circle,
//                        image: new DecorationImage(
//                          image: new AssetImage('assets/module_list_pdfview.png'),),
//                      ),
//                    ),
//                  ),
//                ),
//                Expanded(
//                  child: Column(
//                    children: <Widget>[
//                      Container(
//                        child: ListTile(
//                          title: Text('Introduce Peopleaps?',style:new TextStyle(
//                              color:Colors.white,
//                              fontSize: 14.0),),
//                          trailing: Icon(Icons.keyboard_arrow_right,color:Colors.white),
//                        ),
//                        height:30,
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//
//        ),
//
//      ),
//
//
//
//
//
//
//    );
//  }
//}






// VideoYoutube

class VideoCard extends StatelessWidget {
  const  VideoCard({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        color: Colors.deepPurpleAccent[700],
        elevation: 4.0,
        child: InkWell(
          onTap:(){
            Navigator.of(context).pushNamed('/VideoPlayerModulePage');
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    width: 55,
                    height:55,
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.cyanAccent[400],

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[900],
                            offset: new Offset(3.0,5.0),
                            blurRadius:50,
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/module_list_video.png'),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: ListTile(
                          title: Text('Whats is PEOPLEAPS?',style:new TextStyle(
                              color:Colors.white,
                              fontSize: 14.0),),
                          trailing: Icon(Icons.keyboard_arrow_right,color:Colors.white),
                        ),
                        height:30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ),

      ),
    );
  }
}

// Quiz
class QuizCard extends StatelessWidget {
  const  QuizCard({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        color: Colors.deepPurpleAccent[700],
        elevation: 4.0,
        child: InkWell(
          onTap:(){
            Navigator.of(context).pushNamed('/GetStartedPage');
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    width: 55,
                    height:55,
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.cyanAccent[400],

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[900],
                            offset: new Offset(3.0,5.0),
                            blurRadius:50,
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/module_list_quiz.png'),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: ListTile(
                          title: Text('Quiz for PEOPLEAPS',style:new TextStyle(
                              color:Colors.white,
                              fontSize: 14.0),),
                          trailing: Icon(Icons.keyboard_arrow_right, color:Colors.white),
                        ),
                        height:30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ),

      ),
    );
  }
}



//Youtube
class YoutubeCard extends StatelessWidget {
  const  YoutubeCard({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        color: Colors.deepPurpleAccent[700],
        elevation: 4.0,
        child: InkWell(
          onTap:(){
            Navigator.of(context).pushNamed('/YouTubeModulePage');
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    width: 55,
                    height:55,
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: Colors.cyanAccent[400],

                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[900],
                            offset: new Offset(3.0,5.0),
                            blurRadius:50,
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/module_list_video.png'),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: ListTile(
                          title: Text('PEOPLEAPS Tutorial',style:new TextStyle(
                              color:Colors.white,
                              fontSize: 14.0),),
                          trailing: Icon(Icons.keyboard_arrow_right,color:Colors.white),
                        ),
                        height:30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ),

      ),
    );
  }
}


class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeIn(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("opacity")
          .add(Duration(milliseconds:500), Tween(begin: 0.0, end: 1.0)),
      Track("translateX").add(
          Duration(milliseconds:500), Tween(begin: 130.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    return ControlledAnimation(
      delay: Duration(milliseconds: (300 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation["translateX"], 0), child: child),
      ),
    );
  }
}
