import 'package:flutter/material.dart';

class TeamTile extends StatefulWidget {
  const TeamTile({Key? key}) : super(key: key);

  @override
  State<TeamTile> createState() => _TeamTileState();
}

class _TeamTileState extends State<TeamTile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 180,
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
        ],
      ),
    );
  }
}
