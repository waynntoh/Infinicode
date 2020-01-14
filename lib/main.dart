import 'package:flutter/material.dart';

import 'package:infinicode/Login_Signup/Login.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue[600],
          accentColor: Colors.cyan[600],

          // Define the default font family.
          fontFamily: 'Clab',
        )
    );
  }
}
