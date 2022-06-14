import 'package:flutter/material.dart';

class ProjectTile extends StatefulWidget {
  const ProjectTile({Key? key}) : super(key: key);

  @override
  State<ProjectTile> createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  size: 20,
                  color: theme.primaryColor,
                ),
                Text(
                  'Social App Gallery',
                  style: theme.textTheme.headline5,
                ),
              ],
            ),
          ),
          Text(
            '10',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
