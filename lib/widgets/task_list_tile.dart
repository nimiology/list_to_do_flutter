import 'package:flutter/material.dart';

class TaskListTile extends StatefulWidget {
  const TaskListTile({Key? key}) : super(key: key);

  @override
  State<TaskListTile> createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Container(
      color: Colors.white,
      width: deviceSize.width,
      height: deviceSize.height * 0.2,
      child: ListView(
        children: [
          ListTile()
        ],
      ),
    );
  }
}
