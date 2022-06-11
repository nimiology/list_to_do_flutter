import 'package:flutter/material.dart';

import '../task_tile.dart';

class TodayTasks extends StatefulWidget {
  const TodayTasks({Key? key}) : super(key: key);

  @override
  State<TodayTasks> createState() => _TodayTasksState();
}

class _TodayTasksState extends State<TodayTasks> {
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      width: deviceSize.width,
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 17.5),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today Task',
                style: theme.textTheme.headline4,
              ),
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _expanded = !_expanded;
                          });
                        },
                        icon: Icon(
                          _expanded ? Icons.expand_more : Icons.expand_less,
                          size: 27.5,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 27.5,
                        )),
                  ],
                ),
              )
            ],
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: _expanded ? deviceSize.height * 0.3 : 0,
            width: deviceSize.width,
            margin: EdgeInsets.symmetric(vertical: 15),
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 15),
              children: [
                TaskTile(),
                TaskTile(),
                TaskTile(),
                TaskTile(),
              ],
            ),

          )
        ],
      ),
    );
  }
}
