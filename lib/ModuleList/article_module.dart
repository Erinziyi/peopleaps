import 'package:flutter/material.dart';
import 'package:html2md/html2md.dart' as html2md;
import 'package:flutter_markdown/flutter_markdown.dart';


class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  static String html = '<h1>This is heading 1</h1> <h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6><img alt="Test Image" src="https://is3-ssl.mzstatic.com/image/thumb/Purple123/v4/24/65/79/24657916-f629-ea2f-0f20-3aeb32e272af/pr_source.jpg/300x0w.jpg" /><p>This paragraph contains a lot of lines in the source code, but the browser ignores it.</p>';

  @override
  Widget build(BuildContext context) {
    String markdown = html2md.convert(html);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.blueAccent[400],

        title: Text('Why PEOPLEAPS?',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),

        ),


      ),
      body: new Container(
        padding:EdgeInsets.all(8.0),
        child: new SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new MarkdownBody(
                data: markdown,
              )
            ],
          ),
        ),


      ),

    );
  }
}
