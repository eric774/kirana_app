import 'package:flutter/material.dart';
import 'package:kirana_kinara/bottomBar.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Favorites"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('No favorites yet!!'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go back!'),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
