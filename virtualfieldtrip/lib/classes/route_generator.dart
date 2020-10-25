import 'package:flutter/material.dart';
import '../pages/landing.dart';
import '../pages/browsing_ft.dart';
import '../pages/ft_details.dart';
import '../pages/student_code.dart';
import '../pages/simulation.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Landing());
      case '/browsing':
        return MaterialPageRoute(builder: (_) => BrowseFT());
      case '/details':
        return MaterialPageRoute(builder: (_) => FTDetails());
      case '/simulator':
        return MaterialPageRoute(builder: (_) => Simulator());
      case '/code':
        return MaterialPageRoute(builder: (_) => FTCodePage());
      default:
        return MaterialPageRoute(builder: (_) => Material(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text("Sorry, but there as an error. Please restart the app."),
            ),
          ),
        ));
    }
  }
}
