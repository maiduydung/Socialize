import 'package:flutter/material.dart';
import 'package:socialize/models/stuff.dart';

class StuffTile extends StatelessWidget {
  final Stuff stuff_item;
  StuffTile({this.stuff_item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.red[stuff_item.strength],
          ),
          title: Text(stuff_item.name),
          subtitle: Text('Needs ${stuff_item.sugars} sugars'),
        ),
      ),
    );
  }
}
