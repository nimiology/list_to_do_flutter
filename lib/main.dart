import 'package:flutter/material.dart';

import 'palette/theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List To Do',
      theme: ThemeData(
        fontFamily: 'SanFrancisco',
        primaryColor: MaterialColor(0xFF3D0000, SecondColor),
        accentColor: MaterialColor(0xFF950101, ThirdColor),
        scaffoldBackgroundColor: MaterialColor(0xFF000000, FirstColor),
        textTheme: const TextTheme(
          headline2: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontFamily: "SanFrancisco"),
          bodyText1: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: "SanFrancisco"),
          headline4: TextStyle(
              fontSize: 17.5,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: "SanFrancisco"),
        )
      ),
      home: HomeScreen(),
      routes: {},
    );
  }
}
