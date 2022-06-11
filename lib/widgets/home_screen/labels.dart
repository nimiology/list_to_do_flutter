import 'package:flutter/material.dart';

class Labels extends StatefulWidget {
  List<Widget> children;

  Labels({Key? key, required this.children}) : super(key: key);

  @override
  State<Labels> createState() => _LabelsState();
}

class _LabelsState extends State<Labels> {
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 17.5),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Labels',
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
                          print(_expanded);
                        });
                      },
                      icon: Icon(
                        _expanded ? Icons.expand_less : Icons.expand_more,
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
          margin: EdgeInsets.only(bottom:10),
          height: _expanded
              ? deviceSize.height *
                  (widget.children.length < 3
                      ? widget.children.length * 0.075
                      : 0.15)
              : 0,
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
              ),
              children: widget.children),
        )
      ]),
    );
  }
}
