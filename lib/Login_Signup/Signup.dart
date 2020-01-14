import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _showPassword = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullnameController = TextEditingController();
  final phonenumberController = TextEditingController();

  void _toggleVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    fullnameController.dispose();
    phonenumberController.dispose();
    super.dispose();
  }

  bool _isEmailValid(String email) {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  bool _isPasswordValid(String password) {
    return (password.isNotEmpty);
  }

  bool _isFullNameValid(String name) {
    return RegExp(r"^[a-zA-Z]+").hasMatch(name);
  }

  bool _isPhoneNumberValid(String phoneNumber) {
    return RegExp(r"^[0-9]+").hasMatch(phoneNumber);
  }

  bool _checkInput() {
    if (_isEmailValid(emailController.text) &&
     _isPasswordValid(passwordController.text) &&
      _isFullNameValid(fullnameController.text) &&
       _isPhoneNumberValid(phonenumberController.text)) {
      return true;
    }
    else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: <Widget>[
         Opacity(
           opacity: .25,
           child: Image.asset('assets/background2.jpg',
             fit: BoxFit.cover,
             width: double.infinity,
             height: double.infinity,),
         ),
         Container(
           alignment: Alignment.center,
           padding: EdgeInsets.only(top: 60, right: 24, left: 24, bottom: 8),
           margin: EdgeInsets.all(8),
           child: ListView(
             children: <Widget>[
               Image.asset('assets/logo.png', height: 100,),
               SizedBox(
                 height: 12,
               ),
               Text('INFINICODE', style: TextStyle(
                   fontSize: 28
               ),textAlign: TextAlign.center,),
               SizedBox(height: 36,),
               Column(
                 children: <Widget>[
                   Column(
                     children: <Widget>[
                       TextField(
                         decoration: InputDecoration(
                             icon: Icon(Icons.email),
                             hintText: 'Email'
                         ),
                         keyboardType: TextInputType.emailAddress,
                         controller: emailController,
                       ),
                       SizedBox(height: 8,),
                       TextField(
                         decoration: InputDecoration(
                           icon: Icon(Icons.lock),
                           hintText: 'Password',
                           suffixIcon: IconButton(
                             icon: (_showPassword) ? Icon(Icons.visibility_off): Icon(Icons.visibility),
                             onPressed: _toggleVisibility,),
                         ),
                         keyboardType: TextInputType.visiblePassword,
                         obscureText: _showPassword,
                         controller: passwordController,
                       ),
                       SizedBox(
                         height: 12,
                       ),
                       TextFormField(
                         decoration: InputDecoration(
                             hintText: 'Full Name',
                             icon: Icon(Icons.person)
                         ),
                         controller: fullnameController,
                       ),
                       SizedBox(
                         height: 12,
                       ),
                       TextFormField(
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: 'Phone Number',
                           icon: Icon(Icons.phone_android),
                         ),
                         controller: phonenumberController,
                       ),
                       SizedBox(height: 22,),
                       RaisedButton(
                         color: Colors.blue,
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: BorderSide(color: Colors.blue)),
                         child: Container(
                           width: double.infinity,
                           child: Text('Create Account', style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,),
                         ),
                         onPressed: () {
                           showDialog(context: context, builder: (context) {
                             return (_checkInput()) ?
                             AlertDialog(content: Container(
                               width: 120,
                               height: 120,
                               child: Column(
                                 children: <Widget>[
                                   Text('Account successfully created!'),
                                   SizedBox(height: 30,),
                                   RaisedButton(
                                     color: Colors.blue,
                                     shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(12)
                                     ),
                                     child: Text('Proceed to login', style: TextStyle(color: Colors.white, fontSize: 15),),
                                     onPressed: () {
                                       Navigator.pop(context);
                                       Navigator.pop(context);
                                     },
                                   )
                                 ],
                               ),
                             )):
                             AlertDialog(content: Text('Invalid Details', textAlign: TextAlign.center, style: TextStyle(color: Colors.red),),
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),);
                           });
                         }
                       ),
                       SizedBox(height: 8,),
                       Container(
                         width: double.infinity,
                         child: RaisedButton(
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                           child: Text('Login', style: TextStyle(fontSize: 18),),
                           onPressed: () => Navigator.pop(context),
                         ),
                       )
                     ],
                   ),
                 ],
               )
             ],
           ),
         ),
       ],
      )
    );
  }
}


