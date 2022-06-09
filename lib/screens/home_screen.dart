import 'package:flutter/material.dart';

import '../widgets/home_screen/greeting.dart';
import '../widgets/home_screen/home_screen_appbar.dart';
import '../widgets/home_screen/home_screen_icon_button.dart';
import '../widgets/home_screen/today_tasks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeScreenAppBar(),
              Greeting(),
              HomeScreenIconButtons(),
              TodayTasks(),
            ],
          ),
        ),
      ),
    );
  }
}
