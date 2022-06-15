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
      margin: const EdgeInsets.only(top: 10, left: 17.5, right: 17.5),
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
                width: 80,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      onTap: () {
                        setState(() {
                          _expanded = !_expanded;
                        });
                      },
                      child: Ink(
                          width: 35,
                          height: 30,
                          child: Icon(
                            _expanded ? Icons.expand_less : Icons.expand_more,
                            size: 25,
                          )),
                    ),
                    InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      onTap: () {},
                      child: Ink(
                        width: 35,
                        height: 30,
                        child: const Icon(
                          Icons.add,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          AnimatedContainer(
            padding: const EdgeInsets.symmetric(vertical: 20),
            duration: const Duration(milliseconds: 300),
            height: _expanded
                ? deviceSize.height *
                    (widget.children.length < 3
                        ? widget.children.length * 0.1
                        : 0.25)
                : 0,
            width: deviceSize.width,
            child: ListView(
                padding: const EdgeInsets.only(top: 15),
                children: widget.children),
          ),
        ],
      ),
    );
  }
}
