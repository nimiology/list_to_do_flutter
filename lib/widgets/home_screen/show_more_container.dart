import 'package:flutter/material.dart';

class ShowMoreContainer extends StatefulWidget {
  String title;
  List<Widget> children;

  ShowMoreContainer({Key? key, required this.children, required this.title})
      : super(key: key);

  @override
  State<ShowMoreContainer> createState() => _ShowMoreContainerState();
}

class _ShowMoreContainerState extends State<ShowMoreContainer> {
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 17.5),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
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
            height: _expanded
                ? deviceSize.height *
                    (widget.children.length < 3
                        ? widget.children.length * 0.1
                        : 0.25)
                : 0,
            width: deviceSize.width,
            child: ListView(
                padding: EdgeInsets.only(top: 15),
                children: widget.children),
          )
        ],
      ),
    );
  }
}
