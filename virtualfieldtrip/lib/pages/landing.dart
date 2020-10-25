import 'package:flutter/material.dart';
import '../utils/themeData.dart';

class Landing extends StatelessWidget {
  final String title;
  Landing({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(gradient: landingGradient),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome"),
            Container(
              width: 200,
              height: 150,
              child: Card(
                margin: EdgeInsets.all(10.0),
                elevation: 10.0,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('/details', arguments: null),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(Icons.star), Text("Teacher")],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 150,
              child: Card(
                margin: EdgeInsets.all(10.0),
                elevation: 10.0,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('/code', arguments: null),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(Icons.person), Text("Student")],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
