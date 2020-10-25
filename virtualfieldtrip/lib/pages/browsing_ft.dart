import 'package:flutter/material.dart';
import '../classes/subject.dart';
import '../classes/simulation.dart';

class BrowseFT extends StatefulWidget {
  @override
  _BrowseFTState createState() => _BrowseFTState();
}

class _BrowseFTState extends State<BrowseFT> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Expanded(
        child: ListView(
        padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 10.0),
        children: [
          Text("Field Trips"),
      //     Expanded(
      //     child: ListView.builder(
      //         itemCount: mysubjects.length,
      //         itemBuilder: (context, i) {
      //           return Container(
      //             width: 100,
      //             height: 100,
      //           );
      //           // return Column(
      //           //   children: [
      //           //     Text(mysubjects[i].getSubjectTitle),
      //           //     // ListView.builder(
      //           //     //     scrollDirection: Axis.horizontal,
      //           //     //     itemCount: mysubjects[i].getSimulations.length,
      //           //     //     itemBuilder: (context, j) {
      //           //     //       return Container(
      //           //     //         margin: EdgeInsets.all(10.0),
      //           //     //         color: Colors.grey,
      //           //     //         child: GestureDetector(
      //           //     //           child: Card(
      //           //     //             child: Column(
      //           //     //               children: [
      //           //     //                 mysubjects[i].getSimulations[j].getIcon,
      //           //     //                 Text(mysubjects[i].getSubjectTitle),
      //           //     //               ],
      //           //     //             ),
      //           //     //           ),
      //           //     //         ),
      //           //     //       );
      //           //     //     })
      //           //   ],
                
      //           // );
      //         }),
      //     ),
      ],
      ),
      ),
    );
  }
}
