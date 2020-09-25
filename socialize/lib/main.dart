import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socialize/models/users.dart';
import 'package:socialize/screens/services/auth.dart';
import 'package:socialize/screens/wrapper.dart';
import 'models/users.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
