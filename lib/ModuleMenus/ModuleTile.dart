import 'package:flutter/material.dart';

import 'package:infinicode/Section/SectionFrame.dart';
import 'package:infinicode/routes.dart' as routes;

class ModuleTile extends StatefulWidget {
  final String title;
  final List<Map> sections;
  final String iconPath;

  ModuleTile(this.title, this.sections, this.iconPath);

  @override
  _ModuleTileState createState() => _ModuleTileState(title, sections, iconPath);
}

class _ModuleTileState extends State<ModuleTile> {
  final String title;
  final List<Map> sections;
  final String iconPath;

  _ModuleTileState(this.title, this.sections, this.iconPath);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          height: 135,
          child: InkWell(
              onTap: () => Navigator.push(context, routes.ScaleRoute(
                  page: Section(title, sections))),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(3, 3)
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [
                      Colors.white70,
                      Colors.white
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset(iconPath, scale: 6,),
                    Text(title, style: TextStyle(
                        fontSize: 17
                    ),),
                  ],
                ),
              )
          ),
        )
    );
  }
}
