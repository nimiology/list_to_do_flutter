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
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: theme.primaryColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Dismissible(
          key: UniqueKey(),
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(25),
              color: theme.errorColor,
            ),
            child: const Icon(
              Icons.delete,
              size: 30,
            ),
          ),
          onDismissed: (direction) {
            setState(() {});
          },
          child: ListTile(
            title: Text(
              'Social App Gallery',
              style: theme.textTheme.headline5,
            ),
            leading: Text(
              '1',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ),
            trailing: Text(
              '10',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
