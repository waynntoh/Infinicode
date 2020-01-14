import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'package:infinicode/ModuleMenus/ModuleTile.dart';
import 'package:infinicode/Data.dart';

class PythonMod extends StatefulWidget {
  @override
  _PythonModState createState() => _PythonModState();
}

class _PythonModState extends State<PythonMod> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final List<Map> _pythonData = PythonData.pythonData;
  final List<String> iconData = [
    'assets/basic_icon.png',
    'assets/control_structure.png',
    'assets/functions_icon.png',
    'assets/files_icon.png',
    'assets/moretypes_icon.png',
    'assets/oop_icon.png',
    'assets/regex_icon.png'
  ];

  List buildMods() {
    List<Widget> mods = [];
    for (var i = 0; i < _pythonData.length; i++) {
      mods.add(ModuleTile(
          _pythonData[i]['title'], _pythonData[i]['sections'], iconData[i]));
    }
    return mods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEdgeDragWidth: 48,
        key: _drawerKey,
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Text('Python'),
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
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: ListView(
                  children: <Widget>[
                    ...buildMods(),
                  ],
                )),
          ],
        ));
  }
}
