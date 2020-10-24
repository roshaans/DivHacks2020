import 'package:flutter/material.dart';
import '../classes/subject.dart';
import '../classes/simulation.dart';

class BrowseFT extends StatefulWidget {
  final String title;
  BrowseFT({Key key, this.title}) : super(key: key);
  @override
  _BrowseFTState createState() => _BrowseFTState();
}

class _BrowseFTState extends State<BrowseFT> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(),
    );
  }
}
