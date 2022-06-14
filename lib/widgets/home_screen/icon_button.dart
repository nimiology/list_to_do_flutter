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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: deviceSize.width * 0.22,
              height: deviceSize.height * 0.1,
              color: theme.primaryColor,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  emoji,
                  style: const TextStyle(fontFamily: 'emoji', fontSize: 40),
                ),
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
        padding: const EdgeInsets.only(right: 12.5, left: 12.5, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(context, 'Task', '✔'),
            Button(context, 'Labels', '📝'),
            Button(context, 'Activity', '📈'),
          ],
        ));
  }
}
