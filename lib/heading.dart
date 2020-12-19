import 'package:flutter/material.dart';

class Heading extends StatefulWidget {
  var category;
  Heading(this.category);

  @override
  _HeadingState createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          // child: Text('Today\'s Deals'),
          child: Text(
            widget.category,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
        Container(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('View All'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
