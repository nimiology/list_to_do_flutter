import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({Key? key}) : super(key: key);

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Morning';
    }
    if (hour < 17) {
      return 'Afternoon';
    }
    return 'Evening';
  }

  @override
  Widget build(BuildContext context) {
    final String greetingString = 'Good ' + greeting();
    return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 7.5, right:12.5, left: 12.5),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: greetingString,
                style: Theme.of(context).textTheme.headline2,
              ),
              TextSpan(
                  text: ' 👋',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontFamily: 'emoji'))
            ],
          ),
        ));
  }
}
