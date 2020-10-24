import 'package:flutter/material.dart';

import 'classes/route_generator.dart';
import 'pages/simulation.dart';
import 'utils/themeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: vftTheme(),
      home: Simulator(),
      // initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
