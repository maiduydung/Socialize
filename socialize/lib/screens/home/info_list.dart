import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:socialize/models/stuff.dart';
import 'package:socialize/screens/home/stuff_tile.dart';

class InfoList extends StatefulWidget {
  @override
  _InfoListState createState() => _InfoListState();
}

class _InfoListState extends State<InfoList> {
  @override
  Widget build(BuildContext context) {
    final stuffs = Provider.of<List<Stuff>>(context ?? []);
    // stuffs.forEach((stuff) {
    //   print(stuff.name);
    //   print(stuff.sugars);
    //   print(stuff.strength);
    // });
    return ListView.builder(
      itemBuilder: (context, index) {
        return StuffTile(stuff_item: stuffs[index]);
      },
      itemCount: stuffs.length,
    );
  }
}
