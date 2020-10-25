import 'package:flutter/material.dart';

class FTDetails extends StatefulWidget {
  final Icon ftIcon;
  final String title;
  final String details;
  FTDetails({Key key, this.ftIcon, this.title, this.details}) : super(key: key);
  @override
  _FTDetailsState createState() => _FTDetailsState();
}

class _FTDetailsState extends State<FTDetails> {
  void navigateToSimulation() {
    print("Navigated to simulation");
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.ftIcon,
            Text(
              widget.title,
              textAlign: TextAlign.center,
            ),
            Text(
              widget.details,
              textAlign: TextAlign.justify,
            ),
            RaisedButton(
                onPressed: () => Navigator.of(context).pushNamed('/simulator', arguments: null),
                color: Colors.blue,
                child: Text(
                  "Start Simulation",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
