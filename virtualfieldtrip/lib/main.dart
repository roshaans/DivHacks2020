import 'package:flutter/material.dart';

import 'classes/route_generator.dart';
import 'pages/browsing_ft.dart';
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
      home: BrowseFT(),
      // initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
