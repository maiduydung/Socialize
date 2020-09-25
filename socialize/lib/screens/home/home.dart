import 'package:flutter/material.dart';
import 'package:socialize/screens/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Socialize'),
          backgroundColor: Colors.lightBlue,
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('Logout'))
          ],
        ),
      ),
    );
  }
}
