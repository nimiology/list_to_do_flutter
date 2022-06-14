import 'package:flutter/material.dart';
import 'package:list_to_do/widgets/home_screen/project_tile.dart';
import 'package:list_to_do/widgets/home_screen/show_more_container.dart';

import '../task_tile.dart';
import 'appbar.dart';
import 'greeting.dart';
import 'icon_button.dart';
import 'label_tile.dart';
import 'labels.dart';


class TheDrawer extends StatelessWidget {
  const TheDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeScreenAppBar(),
            Greeting(),
            HomeScreenIconButtons(),
            ShowMoreContainer(
              title: 'Projects',
              children: [
                ProjectTile(),
                ProjectTile(),
                ProjectTile(),
                ProjectTile(),
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

          ],
        ),
      ),
    );
  }
}