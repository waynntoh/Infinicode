import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'package:infinicode/Section/SectionTile.dart';

class Section extends StatefulWidget {
  final String moduleTitle;
  final List<Map> sections;

  Section(this.moduleTitle, this.sections);

  @override
  _SectionState createState() => _SectionState(moduleTitle, sections);
}

class _SectionState extends State<Section> {
  final String moduleTitle;
  final List<Map> sections;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  _SectionState(this.moduleTitle, this.sections);

  List buildSection() {
    List<Widget> sectionTiles = [];
    for (var i = 0; i < sections.length; i++) {
      sectionTiles.add(SectionTile(sections[i]['title'], sections[i]['content'],
          sections[i]['question']));
    }
    return sectionTiles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEdgeDragWidth: 48,
        key: _drawerKey,
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text(moduleTitle),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _drawerKey.currentState.openDrawer(),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 128,
                child: DrawerHeader(
                  padding: EdgeInsets.only(top: 22, left: 22),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.blue[800],
                    Colors.blue[400],
                    Colors.blue[200],
                    Colors.blue[100],
                    Colors.white
                  ])),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/elon.jpg'),
                        radius: 40,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Elon Musk',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black)),
                          SizedBox(
                            height: 4,
                          ),
                          Text('elonmusk@spacex.com',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black87)),
                          SizedBox(
                            height: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person_add),
                      title: Text('Invite Friends', style: TextStyle(fontSize: 15),),
                      onTap: () {
                        Toast.show(
                            "Friends not available when offline", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Rate', style: TextStyle(fontSize: 15),),
                      onTap: () {
                        Toast.show(
                            "*Will be redirected to Google Play Store", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.feedback),
                      title: Text('Feedback', style: TextStyle(fontSize: 15),),
                      onTap: () {
                        Toast.show(
                            "*Will be redirected to the main Website", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      },
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text('Log Out', style: TextStyle(fontSize: 15),),
                      onTap: () => Navigator.of(context)
                          .popUntil((route) => route.isFirst),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            Opacity(
              opacity: 1,
              child: Image.asset(
                'assets/white_bg.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(12),
              child: ListView(
                children: <Widget>[
                  ...buildSection(),
                ],
              ),
            )
          ],
        ));
  }
}
