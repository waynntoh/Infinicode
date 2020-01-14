import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:infinicode/Content/QuizFrame.dart';
import 'package:infinicode/routes.dart' as routes;

class ContentFrame extends StatelessWidget {
  final String title;
  final Map content;
  final Map question;
  final Function sectionToggle;

  ContentFrame(this.title, this.content, this.question, this.sectionToggle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text(title),
        ),
        body: Stack(
          children: <Widget>[
            Opacity(
              opacity: .5,
              child: Image.asset(
                'assets/white_bg.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            (content.containsKey('box'))
                ? WithBox(content['header'], content['description'],
                    content['box'], question, sectionToggle)
                : WithoutBox(content['header'], content['description'],
                    question, sectionToggle),
          ],
        ));
  }
}

class WithBox extends StatelessWidget {
  final String header;
  final String description;
  final String box;
  final Map question;
  final Function sectionToggle;

  WithBox(this.header, this.description, this.box, this.question,
      this.sectionToggle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(8),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          Text(header,
              style: TextStyle(fontSize: 28, color: Colors.black87),
              textAlign: TextAlign.start),
          SizedBox(
            height: 32,
          ),
          Text(description,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.start),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: Colors.grey[300],
            padding: EdgeInsets.all(18),
            child: Text(
              box,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
              alignment: Alignment.centerRight,
              child: ButtonTheme(
                minWidth: 160,
                height: 40,
                child: RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      routes.ScaleRoute(
                        page: QuizFrame(question, sectionToggle),
                      )),
                ),
              ))
        ],
      ),
    );
  }
}

class WithoutBox extends StatelessWidget {
  final String header;
  final String description;
  final Map question;
  final Function sectionToggle;

  WithoutBox(this.header, this.description, this.question, this.sectionToggle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(8),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          Text(header,
              style: TextStyle(fontSize: 28, color: Colors.black87),
              textAlign: TextAlign.start),
          SizedBox(
            height: 32,
          ),
          Text(description,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.start),
          SizedBox(
            height: 32,
          ),
          Container(
              alignment: Alignment.centerRight,
              child: ButtonTheme(
                minWidth: 160,
                height: 45,
                child: RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      routes.ScaleRoute(
                        page: QuizFrame(question, sectionToggle),
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
