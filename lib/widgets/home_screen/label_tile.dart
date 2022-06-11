import 'package:flutter/material.dart';

class LabelTile extends StatefulWidget {
  const LabelTile({Key? key}) : super(key: key);

  @override
  State<LabelTile> createState() => _LabelTileState();
}

class _LabelTileState extends State<LabelTile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: theme.primaryColor,
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.label),
              Text(
                'Open Source',
                style: theme.textTheme.headline5,
              ),
            ]
        ),
      ),
    );
  }
}
