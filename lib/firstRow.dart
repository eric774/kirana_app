import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class FirstRow extends StatelessWidget {
  const FirstRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Good ' + greeting(),
              ),
              Text(
                'Nicholas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          // width: 100,
          // child: Text(greeting()),
        ),
        Container(
          // alignment: CrossAxisAlignment.end,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class IconButton extends StatefulWidget {
  const IconButton({
    Key key,
  }) : super(key: key);

  @override
  _IconButtonState createState() => _IconButtonState();
}

class _IconButtonState extends State<IconButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Icon(
        FontAwesomeIcons.ellipsisV,
        // size: appBarMenuIconSize,
      ),
    );
  }
}
