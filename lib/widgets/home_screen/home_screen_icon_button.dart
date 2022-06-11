import 'package:flutter/material.dart';

class HomeScreenIconButtons extends StatelessWidget {
  const HomeScreenIconButtons({Key? key}) : super(key: key);

  Container Button(BuildContext context, text, emoji) {
    final deviceSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text,
            style: theme.textTheme.bodyText1,
          ),
          Center(
            child: Container(
              width: deviceSize.width * 0.2,
              height: deviceSize.height * 0.1,
              decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  emoji,
                  style: const TextStyle(fontFamily: 'emoji', fontSize: 40),
                ),
              ),
            ),
          ),
        ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
        width: deviceSize.width,
        height: deviceSize.height * 0.17,
        margin:const EdgeInsets.symmetric(horizontal: 12.5),
        padding: const EdgeInsets.only(right: 12.5, left: 12.5, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(context, 'Task', '✔'),
            Button(context, 'Project', '✨'),
            Button(context, 'Team', '🤝'),
          ],
        ));
  }
}
