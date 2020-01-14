import 'package:flutter/material.dart';

import 'package:infinicode/Content/ContentFrame.dart';
import 'package:infinicode/routes.dart' as routes;

class SectionTile extends StatefulWidget {
  final String title;
  final Map content;
  final Map question;

  SectionTile(this.title, this.content, this.question);

  @override
  _SectionTileState createState() => _SectionTileState(title, content, question);
}

class _SectionTileState extends State<SectionTile> {
  final String title;
  final Map content;
  final Map question;
  bool sectionAnswered = false;

  void setSectionStat() {
    setState(() {
      sectionAnswered = true;
    });
  }

  _SectionTileState(this.title, this.content, this.question);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.push(context, routes.ScaleRoute(
              page: ContentFrame(title, content, question, setSectionStat))),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(3, 3)
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white70,
                    ]
                  )
                ),
                padding: EdgeInsets.all(2),
                child: ListTile(
                  title: Text(title, textAlign: TextAlign.start),
                  leading: (sectionAnswered)?
                  Icon(Icons.check_box, size: 40, color: Colors.blueAccent,):
                  Icon(Icons.check_box_outline_blank, size: 40,),
                ),
              )
          ),
        ),
        SizedBox(
          height: 12,
        )
      ],
    );
  }
}
