import 'package:flutter/material.dart';
import 'package:socialize/screens/authenticate/authenticate.dart';
import 'package:socialize/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //returning home or auth widget
    return Authenticate();
  }
}
