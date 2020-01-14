import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<ResetPassword> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
  
  bool _isEmailValid(String email) {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: .25,
            child: Image.asset(
              'assets/background2.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 72),
            margin: EdgeInsets.all(12),
            child: Center(
                child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 36),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      '*Send a reset password link to this email',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'Send Reset Link',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return (!_isEmailValid(emailController.text))
                                    ? AlertDialog(
                                        content: Text(
                                          'Invalid Email',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      )
                                    : AlertDialog(
                                        content: Container(
                                        width: 120,
                                        height: 120,
                                        child: Column(
                                          children: <Widget>[
                                            Text('Reset link sent successfully!',
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 24,
                                            ),
                                            RaisedButton(
                                              color: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Text('Proceed to login', style: TextStyle(color: Colors.white, fontSize: 15),),
                                              onPressed: () {
                                                Navigator.pop(context);
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        ),
                                      ));
                              });
                        },
                      ),
                    ),
                    SizedBox(height: 4,),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    )
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
