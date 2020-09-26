import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class InfoList extends StatefulWidget {
  @override
  _InfoListState createState() => _InfoListState();
}

class _InfoListState extends State<InfoList> {
  @override
  Widget build(BuildContext context) {
    final stuffs = Provider.of<QuerySnapshot>(context);
    //print(stuffs.documents);
    for (var doc in stuffs.documents) {
      print(doc.data);
    }
    return Container();
  }
}
