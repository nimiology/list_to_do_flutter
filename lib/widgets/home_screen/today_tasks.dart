import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
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
                          setState((){
                            _expanded = !_expanded;
                          });
                        },
                        icon: Icon(
                          _expanded ? Icons.expand_less : Icons.expand_more,
                          color: Colors.white,
                          size: 27.5,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 27.5,
                        )),
                  ],
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
