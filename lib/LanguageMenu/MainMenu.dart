import 'package:flutter/material.dart';
import 'package:infinicode/ModuleMenus/PythonModules.dart';
import 'package:infinicode/routes.dart' as routes;
import 'package:toast/toast.dart';

class MainMenu extends StatefulWidget {
  @override
  _LanguageMenuState createState() => _LanguageMenuState();
}

class _LanguageMenuState extends State<MainMenu> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        drawerEdgeDragWidth: 48,
        key: _drawerKey,
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
              opacity: .65,
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
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('Courses',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 52.0,
                            fontFamily: 'ColtanG',
                            letterSpacing: 0,)),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 5,
                                  spreadRadius: .5,
                                  offset: Offset(3, 3))
                            ],
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(colors: [
                              Colors.white,
                              Colors.white70,
                              Colors.white,
                            ])),
                        child: ListTile(
                            leading: Image.asset(
                              'assets/python_icon.png',
                              width: 50,
                              height: 45,
                            ),
                            trailing: Icon(
                              Icons.arrow_right,
                              size: 40,
                              color: Colors.blue[400],
                            ),
                            title: Text('Python 3'),
                            subtitle: Text('74%'),
                            onTap: () {
                              Navigator.push(context,
                                  routes.ScaleRoute(page: PythonMod()));
                            }),
                      )),
                  SizedBox(
                    height: 24,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: .2,
                                  spreadRadius: .2,
                                  offset: Offset(1, 1))
                            ],
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(colors: [
                              Colors.white60,
                              Colors.white70,
                              Colors.white60,
                            ])),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/java_icon.png',
                            width: 50,
                            height: 45,
                          ),
                          title: Text('Java'),
                          subtitle: Text('-'),
                          trailing: Text(
                            'Coming Soon...',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 24,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: .2,
                                  spreadRadius: .2,
                                  offset: Offset(1, 1))
                            ],
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(colors: [
                              Colors.white60,
                              Colors.white70,
                              Colors.white60,
                            ])),
                        child: ListTile(
                          leading: Image.asset(
                            'assets/flutter_icon.png',
                            width: 50,
                            height: 45,
                          ),
                          title: Text('Flutter'),
                          subtitle: Text('-'),
                          trailing: Text(
                            'Coming Soon...',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
