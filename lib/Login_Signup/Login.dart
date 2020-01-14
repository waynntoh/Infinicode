import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:infinicode/LanguageMenu/MainMenu.dart';
import 'package:infinicode/Login_Signup/ResetPassword.dart';
import 'package:infinicode/Login_Signup/Signup.dart';
import 'package:infinicode/routes.dart' as routes;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberMe = false;
  bool _showPassword = true;
  String email = 'elonmusk@spacex.com';
  String password = 'toTheMoon2020';
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _toggleRememberMe() {
    setState(() {
      _rememberMe = !_rememberMe;
    });
  }

  void _toggleVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool _isEmailValid(String email) {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  bool _isPasswordValid(String _password) {
    return (_password == password);
  }

  bool _checkInput() {
    if (_isEmailValid(emailController.text) && _isPasswordValid(passwordController.text)) {
      return true;
    }
    else {
      return false;
    }
  }

  void clearText() {
    emailController.clear();
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Opacity(
          opacity: .35,
          child: Image.asset(
            'assets/background2.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 60, right: 24, left: 24, bottom: 8),
          margin: EdgeInsets.all(8),
          child: ListView(
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                height: 100,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'INFINICODE',
                style: TextStyle(
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 36,
              ),
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Password',
                      suffixIcon: Container(
                        child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 500),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return ScaleTransition(
                                  child: child, scale: animation);
                            },
                            child: (_showPassword)
                                ? IconButton(
                                    icon: Icon(Icons.visibility_off),
                                    onPressed: _toggleVisibility,
                                  )
                                : IconButton(
                                    icon: Icon(Icons.visibility),
                                    onPressed: _toggleVisibility,
                                  )),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _showPassword,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            'Remember Me',
                            style: TextStyle(fontSize: 13),
                          ),
                          onTap: _toggleRememberMe,
                        ),
                        Switch(
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlueAccent,
                          value: _rememberMe,
                          onChanged: (bool value) {
                            setState(() {
                              _rememberMe = !_rememberMe;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.blue)),
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () {
                      (_checkInput())
                          ? Navigator.push(
                              context, routes.ScaleRoute(page: MainMenu()))
                          : showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text(
                                    'Invalid Email or Password',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                );
                              });
                      (!_rememberMe) ? clearText() : null;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        'Create New Account',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, routes.SizeRoute(page: Signup()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  FlatButton(
                    child: Text('Forgot Password?'),
                    onPressed: () => Navigator.push(
                        context, routes.SizeRoute(page: ResetPassword())),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
