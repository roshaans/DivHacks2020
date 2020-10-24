import 'package:flutter/material.dart';
import '../utils/themeData.dart';
import 'package:google_fonts/google_fonts.dart';

class Landing extends StatelessWidget {
  final String title;
  Landing({Key key, this.title}) : super(key: key);

  void navigateToBrowse(BuildContext context) {
    Navigator.of(context).pushNamed('/browse', arguments: null);
  }

  void navigateToFTCode(BuildContext context) {
    Navigator.of(context).pushNamed('/code', arguments: null);
  }

  Widget roleCard(String role, Icon roleIcon, Function onTapMethod) {
    return Container(
      width: 200,
      height: 150,
      child: Card(
        margin: EdgeInsets.all(10.0),
        elevation: 10.0,
        child: GestureDetector(
          onTap: onTapMethod,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [roleIcon, Text(role)],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(gradient: landingGradient),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome"),
            roleCard(
              "Teacher",
              Icon(Icons.grade),
              navigateToBrowse,
            ),
            roleCard(
              "Student",
              Icon(Icons.person),
              navigateToFTCode,
            ),
          ],
        ),
      ),
    );
  }
}
