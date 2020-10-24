import 'package:flutter/material.dart';

class Simulator extends StatefulWidget {
  @override
  _SimulatorState createState() => _SimulatorState();
}

class _SimulatorState extends State<Simulator> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Text("Insert Unity Simulator Here:"),
      ),
    );
  }
}
