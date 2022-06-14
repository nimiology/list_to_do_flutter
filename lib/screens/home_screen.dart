import 'package:flutter/material.dart';

import '../widgets/home_screen/drawer.dart';
import '../widgets/home_screen/greeting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:  TheDrawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text('List To Do',
              style: TextStyle(fontFamily: 'SanFrancisco')),
        ),
        body: SafeArea(
          child: Column(
            children: [],
          ),
        ));
  }
}
