import 'package:flutter/material.dart';
import 'package:list_to_do/providers/task.dart';
import 'package:provider/provider.dart';

import 'palette/theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Tasks(),
        )
      ],
      child: MaterialApp(
        title: 'List To Do',
        theme: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.fromSwatch(
              accentColor: MaterialColor(0xFFEE4540,
                  SecondColor),
            ),
            textTheme: const TextTheme(
              headline2: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: "SanFrancisco"),
              headline3: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontFamily: "SanFrancisco"),
              headline4: TextStyle(
                  fontSize: 17.5,
                  fontWeight: FontWeight.w600,
                  fontFamily: "SanFrancisco"),
              headline5: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "SanFrancisco"),
            )),
        home: HomeScreen(),
        routes: {},
      ),
    );
  }
}
