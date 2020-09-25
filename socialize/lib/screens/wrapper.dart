import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socialize/screens/authenticate/authenticate.dart';
import 'package:socialize/screens/home/home.dart';
import 'package:socialize/models/users.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //returning home or auth widget
    final user = Provider.of<User>(context);
    print(user);
    return Authenticate();
  }
}
