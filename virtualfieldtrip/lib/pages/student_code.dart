import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class FTCodePage extends StatefulWidget {
  @override
  _FTCodePageState createState() => _FTCodePageState();
}

class _FTCodePageState extends State<FTCodePage> {
  TextEditingController _controller = TextEditingController();
  Color gradientPrimary;
  Color gradientSecondary;
  LinearGradient background;

  @override
  void initState() {
    Random rng = Random();
    gradientPrimary = Colors.primaries[rng.nextInt(Colors.primaries.length)];
    gradientSecondary = Colors.primaries[rng.nextInt(Colors.primaries.length)];
    background = LinearGradient(colors: [gradientPrimary, gradientSecondary]);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void navigateToSimulation(String code) {
    print(code);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(gradient: background),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(5.0),
              width: 200,
              child: TextFormField(
                textAlign: TextAlign.center,
                controller: _controller,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                decoration: InputDecoration(hintText: 'Enter Code'),
              ),
            ),
            RaisedButton(
              onPressed: () {
                navigateToSimulation(_controller.text);
              },
              color: Colors.black,
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
