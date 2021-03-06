import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool done = false;

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
            leading: TextButton(
              onPressed: () {
                setState(() {
                  done = !done;
                });
              },
              child: Icon(
                done ? Icons.check_circle_outline : Icons.circle_outlined,
                color: done ? theme.colorScheme.secondary: Colors.white,
              ),
            ),
            title: Text(
              'Playing Video Games',
              style: theme.textTheme.headline5,
            ),
          ),
        ),
      ),
    );
  }
}
