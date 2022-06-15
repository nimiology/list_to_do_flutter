import 'package:flutter/material.dart';
import 'package:list_to_do/widgets/home_screen/project_tile.dart';
import 'package:list_to_do/widgets/home_screen/show_more_container.dart';
import 'package:list_to_do/widgets/home_screen/team_tile.dart';

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
            const HomeScreenAppBar(),
            const HomeScreenIconButtons(),
            ShowMoreContainer(
              title: 'Projects',
              children: const [
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
              children: const [
                TeamTile(),
                TeamTile(),
                TeamTile(),
                TeamTile(),
                TeamTile(),
                TeamTile(),
              ],
            ),

          ],
        ),
      ),
    );
  }
}