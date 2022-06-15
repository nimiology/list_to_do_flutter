import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 12.5, left: 12.5),
      width: deviceSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            const CircleAvatar(
              maxRadius: 16,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Nima',
              style: theme.textTheme.headline3
            ),
          ]),
          const Icon(
            Icons.settings,
            size: 30,
          )
        ],
      ),
    );
  }
}
