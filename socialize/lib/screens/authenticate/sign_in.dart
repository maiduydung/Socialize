import 'package:flutter/material.dart';
import 'package:socialize/screens/services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  //text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
        title: Text('Sign in to Socialize'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text('Register')),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              onChanged: (val) {
                setState(() => email = val);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: true,
              onChanged: (val) {
                setState(() => password = val);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              color: Colors.black38,
              onPressed: () async {
                print(email);
                print(password);
              },
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
