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
            style: theme.textTheme.headline4?.copyWith(fontSize: 21),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: deviceSize.width * 0.185,
                height: deviceSize.height * 0.0925,
                color: theme.primaryColor,
                child: TextButton(
                  onPressed: () {},
                      child: Text(
                        emoji,
                        style: const TextStyle(fontFamily: 'emoji', fontSize: 35),
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
        height: deviceSize.height * 0.15,
        margin: const EdgeInsets.only(bottom: 10, top: 25),
        padding: const EdgeInsets.symmetric(horizontal: 12.5),
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
