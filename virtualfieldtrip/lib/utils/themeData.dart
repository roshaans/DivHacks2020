import 'package:flutter/material.dart';

final LinearGradient landingGradient =
    LinearGradient(colors: [Colors.primaries[0], Colors.primaries[1]]);

ThemeData vftTheme() {
  double myelevation = 10.0;
  double margins = 5.0;
  double borderRadius = 5.0;

  TextTheme _basicText(TextTheme base) {
    return base.copyWith(
      title: base.headline1.copyWith(
        fontFamily: 'SansitaSwashed',
        fontWeight: FontWeight.w700,
        color: Colors.red,
      ),
    );
  }

  AppBarTheme _appbarTheme(AppBarTheme base) {
    return base.copyWith(
      centerTitle: true,
      color: Colors.white,
    );
  }

  BottomAppBarTheme _bottombarTheme(BottomAppBarTheme base) {
    return base.copyWith(
      color: Colors.white,
      elevation: myelevation,
    );
  }

  CardTheme _cardTheme(CardTheme base) {
    return base.copyWith(
      color: Colors.white,
      elevation: myelevation,
      margin: EdgeInsets.all(margins),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicText(base.textTheme),
    appBarTheme: _appbarTheme(base.appBarTheme),
    bottomAppBarTheme: _bottombarTheme(base.bottomAppBarTheme),
    cardTheme: _cardTheme(base.cardTheme),
  );
}
