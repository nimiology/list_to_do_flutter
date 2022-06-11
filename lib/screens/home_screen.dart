import 'package:flutter/material.dart';

import '../widgets/home_screen/greeting.dart';
import '../widgets/home_screen/appbar.dart';
import '../widgets/home_screen/icon_button.dart';
import '../widgets/home_screen/label_tile.dart';
import '../widgets/home_screen/labels.dart';
import '../widgets/home_screen/project_tile.dart';
import '../widgets/home_screen/show_more_container.dart';
import '../widgets/task_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HomeScreenAppBar(),
            Greeting(),
            HomeScreenIconButtons(),
            ShowMoreContainer(title: 'Today Tasks', children: [
              TaskTile(),
              TaskTile(),
              TaskTile(),
              TaskTile(),
              TaskTile(),
              TaskTile(),
              TaskTile(),
              TaskTile(),
              TaskTile(),
              TaskTile(),
            ]),
            ShowMoreContainer(
              title: 'Projects',
              children: [
                ProjectTile(),
                ProjectTile(),
                ProjectTile(),
                ProjectTile(),
                ProjectTile(),
              ],
            ),
            // TeamTile
            ShowMoreContainer(
              title: 'Teams',
              children: [
                ProjectTile(),
                ProjectTile(),
                ProjectTile(),
                ProjectTile(),
                ProjectTile(),
              ],
            ),
            Labels(
              children: [
                LabelTile(),
                LabelTile(),
                LabelTile(),
                LabelTile(),
                LabelTile(),
                LabelTile(),
                LabelTile(),
                LabelTile(),
                LabelTile(),
                LabelTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
