import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 12.5, left: 12.5),
      width: deviceSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            const CircleAvatar(
              maxRadius: 12.5,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: deviceSize.width * 0.015,
            ),
            const Text(
              'List To Do',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          const Icon(
            Icons.notifications_none,
            size: 25,
          )
        ],
      ),
    );
  }
}
